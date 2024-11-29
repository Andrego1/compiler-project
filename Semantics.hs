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
       else error $ "type error in " ++ bop --TODO melhorar menssagem
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
    VarDeclTyped (IdNode id) typ expr ->
        if validateExpr typ expr
        then  (Map.insert id (typ, True) env) 
        else error $ "Error in variable declaration '" ++ id ++ "': Type and value do not correspond (" ++ show typ ++ ", " ++ show expr ++ ")"
    ValDeclTyped (IdNode id) typ expr ->
        if validateExpr typ expr
        then  (Map.insert id (typ, False) env) 
        else error $ "Error in value declaration '" ++ id ++ "':  Type and value do not correspond (" ++ show typ ++ ", " ++ show expr ++ ")"
    VarDecl (IdNode id) expr ->
        let inferredType = inferType expr
        in  (Map.insert id (inferredType, True) env) 
    ValDecl (IdNode id) expr ->
        let inferredType = inferType expr
        in  (Map.insert id (inferredType, False) env) 
    --_ -> error $ "Error: Declaration invalid or not suported: " ++ show decl
    _ -> env


-- verificar varias expressoes seguidas
checkStms :: TypeEnv -> [Exp] -> Bool
checkStms env = foldr ((&&) . checkStm env) True

checkAssigns :: TypeEnv -> Ident -> Exp -> String -> Bool
checkAssigns env id expr assign = case Map.lookup id env of
    Just (typ, bool) -> (checkExpr env expr == typ && bool) || error ("Error: type error in assign: '" ++ assign ++ "' with id: " ++ id)
    Nothing -> error "Error: Undeclared variable"

-- (agora o ++ e -- não são expressoes mas commandos/statements)
checkStm :: TypeEnv -> Exp -> Bool -- ACABAR !!! 
checkStm env (AssignNode id expr)    = checkAssigns env id expr "="
checkStm env (AddAssignNode id expr) = checkAssigns env id expr "+="
checkStm env (SubAssignNode id expr) = checkAssigns env id expr "-="
checkStm env (MultAssignNode id expr)= checkAssigns env id expr "*="
checkStm env (DivAssignNode id expr) = checkAssigns env id expr "/="
checkStm env (ModAssignNode id expr) = checkAssigns env id expr "%="
checkStm env (IncrNode (IdNode id))  = case Map.lookup id env of
    Just (typ, bool) -> (typ == IntType || typ == FloatType) || error ("Error: type error with id: " ++ id)
    Nothing -> error "Error: Undeclared variable"
checkStm env (DecrNode (IdNode id))  = case Map.lookup id env of
    Just (typ, bool) -> (typ == IntType || typ == FloatType) || error ("Error: type error with id: " ++ id)
    Nothing -> error "Error: Undeclared variable"

checkStm env (IfNode cond stm1)
    = let typecond = checkExpr env cond
          check1   = checkStms env stm1
        in ((typecond == BoolType && check1) || error "type error in if then else")
checkStm env (IfElseNode cond stm1 stm2)
    = let typecond = checkExpr env cond
          check1   = checkStms env stm1
          check2   = checkStms env stm2
        in ((typecond == BoolType && check1 && check2) || error "type error in if then else")

checkStm env (WhileNode cond stm)
    = let typecond = checkExpr env cond
          check    = checkStms env stm
        in ((typecond == BoolType && check) || error "type error in while")

checkStm env (PrintNode expr) =
    let _ = checkExpr env expr -- pode haver erros na expression
    in True -- nao existem erros no comando em si

checkStm env _ = True -- estou a pensar as declaracoes que passam por aqui

-- recebe AST e verifica semanticamente o programa
checkProgram :: Exp -> Bool
checkProgram (ProgramNode exprs) = checkStms (getDecl exprs) exprs
checkProgram _ = error "Error: Program should start with a ProgramNode"

getDecl :: [Exp] -> TypeEnv
getDecl [] = Map.empty
getDecl (exp:rest) = extendEnv (getDecl rest) exp