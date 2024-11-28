module Semantics where

import Data.Map as Map ( lookup, Map )
import Parser (Exp(..), Type(..)) -- para obter a AST(Exp) e tipos(Type)

type Ident = String -- para identificadores

type TypeEnv = Map Ident Type -- ambiente (tabela de simbolos), um bool para ver se é mutavel?

-- tenta encontrar a variavel e retorna o seu tipo -- NAO USADO
--myLookup :: Ident -> TypeEnv -> Type
--myLookup x env = 

checkExpr :: TypeEnv -> Exp -> Type
checkExpr env (NumNode n) = IntType
checkExpr env (IdNode x)  = case Map.lookup x env of
    Nothing -> error "undeclered variable"
    Just t  -> t
-- acho que para as outras operações (+,-,*,/,%) é o mesmo apenas muda a menssagem de erro
checkExpr env (AddNode e1 e2 )
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if t1==IntType && t2==IntType then IntType
           else error "type error in +"
checkExpr env (SubNode e1 e2 )
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if t1==IntType && t2==IntType then IntType
           else error "type error in -"
checkExpr env (MultNode e1 e2 )
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if t1==IntType && t2==IntType then IntType
           else error "type error in *"
checkExpr env (DivNode e1 e2 )
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if t1==IntType && t2==IntType then IntType
           else error "type error in /"
checkExpr env (ModNode e1 e2 )
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if t1==IntType && t2==IntType then IntType
           else error "type error in %"
-- acho que para (<=,>=,>),exceto error, é o mesmo mas para == pode ser IntBool em t1 e t2 também
checkExpr env (LtNode e1 e2)
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if t1==IntType && t2==IntType then BoolType
           else error "type error in <"
checkExpr env (GtNode e1 e2)
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if t1==IntType && t2==IntType then BoolType
           else error "type error in >"
checkExpr env (LeNode e1 e2)
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if t1==IntType && t2==IntType then BoolType
           else error "type error in <="
checkExpr env (GeNode e1 e2)
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if t1==IntType && t2==IntType then BoolType
           else error "type error in >="
checkExpr env (EqNode e1 e2)
    = let t1 = checkExpr env e1
          t2 = checkExpr env e2
        in if (t1==IntType && t2==IntType) || (t1==BoolType && t2==BoolType) then BoolType
           else error "type error in =="

--type Decl = (Ident, Type) -- para as declaracoes de variaveis

-- verificar varias expressoes seguidas
checkStms :: TypeEnv -> [Exp] -> Bool
checkStms env = foldr ((&&) . checkStm env) True

-- acho que nao esta bem! VER MELHOR
extendEnv :: TypeEnv -> [Exp] -> TypeEnv
extendEnv env []     = env
extendEnv env ((VarDeclTyped (IdNode id) t exp):rest) = extendEnv (Map.insert id t) rest

checkStm :: TypeEnv -> Exp -> Bool -- nao tenho a certeza sobre os tipos
checkStm env (AssignNode id expr) -- muito repetitivo !!!
    = case Map.lookup id env of
        Just typ -> (checkExpr env expr == typ) || error "type error in assign"
        Nothing -> error "undeclared variable"
checkStm env (AddAssignNode id expr) 
    = case Map.lookup id env of
        Just typ -> (checkExpr env expr == typ) || error "type error in assign"
        Nothing -> error "undeclared variable"
checkStm env (SubAssignNode id expr) 
    = case Map.lookup id env of
        Just typ -> (checkExpr env expr == typ) || error "type error in assign"
        Nothing -> error "undeclared variable"
checkStm env (MultAssignNode id expr) 
    = case Map.lookup id env of
        Just typ -> (checkExpr env expr == typ) || error "type error in assign"
        Nothing -> error "undeclared variable"
checkStm env (DivAssignNode id expr) 
    = case Map.lookup id env of
        Just typ -> (checkExpr env expr == typ) || error "type error in assign"
        Nothing -> error "undeclared variable"
checkStm env (ModAssignNode id expr)
    = case Map.lookup id env of
        Just typ -> (checkExpr env expr == typ) || error "type error in assign"
        Nothing -> error "undeclared variable"

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
          check = checkStms env stm
        in ((typecond == BoolType && check) || error "type error in while")