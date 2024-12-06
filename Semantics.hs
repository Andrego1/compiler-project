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
       else if (t1 == FloatType || t2 == FloatType) && (t1 == IntType || t2 == IntType) then FloatType 
       else error $ "Error: type error in '" ++ op ++ "': Expected matching types, but got (" ++ show t1 ++ ", " ++ show t2 ++ ")"

-- função auxiliar usado para verificação de tipos de expressões boleanas exceto comparação
checkComparison :: TypeEnv -> Exp -> Exp -> String -> Type
checkComparison env e1 e2 bop =
    let t1 = checkExpr env e1
        t2 = checkExpr env e2
    in if t1 == t2 then BoolType
       else error $ "Error: Type error in '" ++ bop ++ "': Expected matching types, but got (" ++ show t1 ++ ", " ++ show t2 ++ ")"

-- verifica o tipos das expressões aritméticas e boleanas
checkExpr :: TypeEnv -> Exp -> Type
checkExpr env (IdNode x)   = case Map.lookup x env of
    Nothing -> error $ "Error: Undeclered variable " ++ x ++ " in envirment: " ++ show (Map.keys env)
    Just (t,b)  -> t
checkExpr env (RealNode _) = FloatType
checkExpr env (BoolNode _) = BoolType
checkExpr env (NumNode _)  = IntType
checkExpr env (ReadlnNode) = IntType -- o readln é usado na atribuição logo 
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
checkExpr env (AndNode e1 e2)=
    let t1 = checkExpr env e1
        t2 = checkExpr env e2
    in if (t1 == BoolType && t2 == BoolType) then BoolType
       else error "Error: type error in '&&': Expected type Boolean"
checkExpr env (OrNode e1 e2) = 
    let t1 = checkExpr env e1
        t2 = checkExpr env e2
    in if (t1 == BoolType && t2 == BoolType) then BoolType
       else error "Error: type error in '||': Expected type Boolean"
checkExpr env (NotNode e1)   = 
    let t1 = checkExpr env e1
    in if (t1 == BoolType) then BoolType
       else error "Error: type error in '!': Expected type Boolean"

validateExpr :: Type -> Exp -> TypeEnv -> Bool
validateExpr ty exp env  = case checkExpr env exp of
    FloatType -> FloatType == ty
    IntType   -> IntType   == ty || FloatType == ty -- se declarar como float e expr dar um int deixa passar
    BoolType  -> BoolType  == ty

inferType :: Exp -> TypeEnv -> Type
inferType exp env  = checkExpr env exp

extendEnv :: TypeEnv -> Exp -> TypeEnv
extendEnv env decl = case decl of
    VarDeclTyped (IdNode id) typ expr -> case Map.lookup id env of
        Just _  -> error $ "Error: Variable '" ++ id ++ "' already declared"
        Nothing -> if validateExpr typ expr env
                   then  (Map.insert id (typ, True) env)
                   else error $ "Error in variable declaration '" ++ id ++ "': Type and value do not correspond (" ++ show typ ++ ", " ++ show expr ++ ")"
    ValDeclTyped (IdNode id) typ expr -> case Map.lookup id env of
        Just _  -> error $ "Error: Value '" ++ id ++ "' already declared"
        Nothing -> if validateExpr typ expr env
                   then  (Map.insert id (typ, False) env)
                   else error $ "Error in value declaration '" ++ id ++ "':  Type and value do not correspond (" ++ show typ ++ ", " ++ show expr ++ ")"
    VarDecl (IdNode id) expr -> case Map.lookup id env of
        Just _  -> error $ "Error: Variable '" ++ id ++ "' already declared"
        Nothing -> let inferredType = inferType expr env
                   in  (Map.insert id (inferredType, True) env)
    ValDecl (IdNode id) expr -> case Map.lookup id env of
        Just _  -> error $ "Error: Variable '" ++ id ++ "' already declared"
        Nothing -> let inferredType = inferType expr env
                   in  (Map.insert id (inferredType, False) env)
    _ -> env


-- verificar varias expressoes seguidas
checkStms :: TypeEnv -> [Exp] -> Bool
checkStms env = foldr ((&&) . checkStm env) True

checkAssigns :: TypeEnv -> Ident -> Exp -> String -> Bool
checkAssigns env id expr assign = case Map.lookup id env of
    Just (typ, bool) -> case checkExpr env expr of
                            IntType   -> ((IntType == typ || typ == FloatType) && bool) || error ("Error: type error in assign: '" ++ assign ++ "' with id: " ++ id)
                            FloatType -> FloatType== typ && bool || error ("Error: type error in assign: '" ++ assign ++ "' with id: " ++ id)
                            BoolType  -> BoolType == typ && bool || error ("Error: type error in assign: '" ++ assign ++ "' with id: " ++ id)
    Nothing -> error "Error: Undeclared variable"

checkStm :: TypeEnv -> Exp -> Bool
-- (agora o ++ e -- não são expressoes mas commandos/statements)
checkStm env (AssignNode id expr)    = checkAssigns env id expr "="
checkStm env (AddAssignNode id expr) = checkAssigns env id expr "+="
checkStm env (SubAssignNode id expr) = checkAssigns env id expr "-="
checkStm env (MultAssignNode id expr)= checkAssigns env id expr "*="
checkStm env (DivAssignNode id expr) = checkAssigns env id expr "/="
checkStm env (ModAssignNode id expr) = checkAssigns env id expr "%="
checkStm env (IncrNode (IdNode id))  = checkAssigns env id (NumNode 1) "++"
checkStm env (DecrNode (IdNode id))  = checkAssigns env id (NumNode 1) "--"

checkStm env (IfNode cond stm1)
    = let typecond = checkExpr env cond
          check1   = checkStms env stm1
        in ((typecond == BoolType && check1) || error "Error: error in if then else")

checkStm env (IfElseNode cond stm1 stm2)
    = let typecond = checkExpr env cond
          check1   = checkStms env stm1
          check2   = checkStms env stm2
        in ((typecond == BoolType && check1 && check2) || error "Error: error in if then else")

checkStm env (WhileNode cond stm)
    = let typecond = checkExpr env cond
          check    = checkStms env stm
        in ((typecond == BoolType && check) || error "Error: error in while")

checkStm env (ReturnNode) = True

checkStm env (PrintNode expr) =
    let _ = checkExpr env expr -- o tipo nao interssa, mas sim se a expr esta correta
    in True -- nao existem erros no comando em si

checkStm env _ = True -- nunca passaria nada diferente do que tenho logo True

-- recebe AST e verifica semanticamente o programa
checkProgram :: Exp -> Bool
checkProgram (ProgramNode exprs) = checkStms (getDecl exprs) exprs
checkProgram _ = error "Error: Program should start with 'fun main(){....}'"

-- cria o ambiente das variaveis todas, uma vez que o ambito é global
getDecl :: [Exp] -> TypeEnv
getDecl = foldl processDecl Map.empty
  where
    processDecl = extendEnv
-- hint diz que podia fazer eta reduce