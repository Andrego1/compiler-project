{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
module Semantics where

import qualified Data.Map as Map
import Parser (Exp(..), Type(..)) -- para obter a AST(Exp) e tipos(Type)

type Ident = String -- para identificadores

type TypeEnv = Map.Map Ident (Type, Bool) -- ambiente (tabela de simbolos), um bool para ver se é mutavel true é senão false

-- função auxiliar usado para verificação de tipos de expressões aritméticas
checkArithmetic :: TypeEnv -> Exp -> Exp -> String -> Type
checkArithmetic env e1 e2 op =
    let t1 = checkExpr env e1
        t2 = checkExpr env e2
    in if t1 == IntType && t2 == IntType then IntType
       else if t1 == FloatType && t2 == FloatType then FloatType
       else error $ "Error: type error in '" ++ op ++ "': Espected (Int,Int), but got (" ++ show t1 ++ ", " ++ show t2 ++ ")"

-- função auxiliar usado para verificação de tipos de expressões boleanas exceto comparação
checkComparison :: TypeEnv -> Exp -> Exp -> String -> Type
checkComparison env e1 e2 bop =
    let t1 = checkExpr env e1
        t2 = checkExpr env e2
    in if t1 == t2 then BoolType
       else error $ "Type error in '" ++ bop ++ "': Expected matching types, but got (" ++ show t1 ++ ", " ++ show t2 ++ ")"
{-
--função auxiliar usado para verificação de tipos de comparações
checkEquality :: TypeEnv -> Exp -> Exp -> String -> Type
checkEquality env e1 e2 bop =
    let t1 = checkExpr env e1
        t2 = checkExpr env e2
    in if t1 == t2 then BoolType
       else error $ "type error in " ++ bop --TODO melhorar menssagem
-}
-- verifica o tipos das expressões aritméticas e boleanas
checkExpr :: TypeEnv -> Exp -> Type
checkExpr env (IdNode x)   = case Map.lookup x env of
    Nothing -> error $ "Error: Undeclered variable " ++ x ++ " in envirment: " ++ show (Map.keys env)
    Just (t,b)  -> t
checkExpr env (RealNode r) = FloatType
checkExpr env (BoolNode b) = BoolType
checkExpr env (NumNode n)  = IntType
-- para as outras operações (+,-,*,/,%) é o mesmo apenas muda a menssagem de erro
checkExpr env (AddNode e1 e2)  = checkArithmetic env e1 e2 "+"
checkExpr env (SubNode e1 e2)  = checkArithmetic env e1 e2 "-"
checkExpr env (MultNode e1 e2) = checkArithmetic env e1 e2 "*"
checkExpr env (DivNode e1 e2)  = checkArithmetic env e1 e2 "/"
checkExpr env (ModNode e1 e2)  = checkArithmetic env e1 e2 "%"
-- para (<=,>=,>),exceto error, é o mesmo mas para == e != pode ser IntBool em t1 e t2 também
checkExpr env (LtNode e1 e2) = checkComparison env e1 e2 "<"
checkExpr env (GtNode e1 e2) = checkComparison env e1 e2 ">"
checkExpr env (LeNode e1 e2) = checkComparison env e1 e2 "<="
checkExpr env (GeNode e1 e2) = checkComparison env e1 e2 ">="
checkExpr env (EqNode e1 e2) = checkComparison env e1 e2 "=="
checkExpr env (NeNode e1 e2) = checkComparison env e1 e2 "!="

validateExpr :: Type -> Exp -> Bool
validateExpr IntType (NumNode _)  = True
validateExpr FloatType (RealNode _) = True
validateExpr BoolType (BoolNode _) = True
validateExpr _ _ = False

inferType :: Exp -> Type
inferType (NumNode _)  = IntType
inferType (RealNode _) = FloatType
inferType (BoolNode _) = BoolType
inferType expr         = error $ "Error: It was not possible to infer the type of the expression: " ++ show expr

extendEnv :: TypeEnv -> Exp -> TypeEnv
--extendEnv env [] = env
extendEnv env decl = case decl of
    VarDeclTyped (IdNode id) typ expr -> case Map.lookup id env of
        Just _ -> error $ "Error: Variable '" ++ id ++ "' already declared"
        Nothing -> if validateExpr typ expr
                   then Map.insert id (typ, True) env
                   else error $ "Error in variable declaration '" ++ id ++ "': Type and value do not match (" ++ show typ ++ ", " ++ show expr ++ ")"
    ValDeclTyped (IdNode id) typ expr -> case Map.lookup id env of
        Just _ -> error $ "Error: Value '" ++ id ++ "' already declared"
        Nothing -> if validateExpr typ expr
                   then Map.insert id (typ, False) env
                   else error $ "Error in value declaration '" ++ id ++ "': Type and value do not match (" ++ show typ ++ ", " ++ show expr ++ ")"
    VarDecl (IdNode id) expr -> case Map.lookup id env of
        Just _ -> error $ "Error: Variable '" ++ id ++ "' already declared"
        Nothing -> let inferredType = inferType expr
                   in Map.insert id (inferredType, True) env
    ValDecl (IdNode id) expr -> case Map.lookup id env of
        Just _ -> error $ "Error: Value '" ++ id ++ "' already declared"
        Nothing -> let inferredType = inferType expr
                   in Map.insert id (inferredType, False) env
    _ -> env


-- verificar varias expressoes seguidas
checkStms :: TypeEnv -> [Exp] -> Bool
checkStms env = foldr ((&&) . checkStm env) True

checkAssigns :: TypeEnv -> Ident -> Exp -> String -> Bool
checkAssigns env id expr assign = case Map.lookup id env of
    Just (typ, bool) -> (checkExpr env expr == typ && bool) || error ("Error: type error in assign: '" ++ assign ++ "' with id: " ++ id)
    Nothing -> error "Error: Undeclared variable"

checkStm :: TypeEnv -> Exp -> Bool
checkStm env (AssignNode id expr)    = checkAssigns env id expr "="
checkStm env (AddAssignNode id expr) = checkAssigns env id expr "+="
checkStm env (SubAssignNode id expr) = checkAssigns env id expr "-="
checkStm env (MultAssignNode id expr)= checkAssigns env id expr "*="
checkStm env (DivAssignNode id expr) = checkAssigns env id expr "/="
checkStm env (ModAssignNode id expr) = checkAssigns env id expr "%="
checkStm env (IncrNode (IdNode id))  = checkAssigns env id (NumNode 1) "++"
checkStm env (DecrNode (IdNode id))  = checkAssigns env id (NumNode 1) "--"

checkStm env (IfNode cond stmts) =
    let condType = checkExpr env cond
    in condType == BoolType && checkStms env stmts

checkStm env (IfElseNode cond stmts1 stmts2) =
    let condType = checkExpr env cond
    in condType == BoolType && checkStms env stmts1 && checkStms env stmts2

checkStm env (WhileNode cond stmts) =
    let condType = checkExpr env cond
    in condType == BoolType && checkStms (Map.insert "__currentLoop" VoidType env) stmts

checkStm env (PrintNode expr) = checkExpr env expr `seq` True

checkStm env (FunDeclNode name params retType body) =
    let paramEnv = foldl (\acc (id, typ) -> Map.insert id (typ, False) acc) env params
        env' = Map.insert name (FunType (map snd params) retType, False) env
    in checkStms paramEnv body

checkStm env (WhenNode expr branches) =
    let exprType = checkExpr env expr
    in all (\(cond, stmts) -> checkWhenBranch env exprType cond stmts) branches

checkStm env (ReturnNode expr) =
    let exprType = checkExpr env expr
    in case Map.lookup "__currentFunction" env of
        Just (FunType _ retType) -> exprType == retType
        _ -> error "Error: 'return' outside function"

checkStm env BreakNode =
    if Map.member "__currentLoop" env
    then True
    else error "Error: 'break' outside loop"

checkStm env _ = True -- estou a pensar as declaracoes que passam por aqui

-- recebe AST e verifica semanticamente o programa
checkProgram :: Exp -> Bool
checkProgram (ProgramNode exprs) = checkStms (getDecl exprs) exprs
checkProgram _ = error "Error: Program should start with a ProgramNode"

getDecl :: [Exp] -> TypeEnv
getDecl [] = Map.empty
getDecl (exp:rest) = extendEnv (getDecl rest) exp