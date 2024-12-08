{-# LANGUAGE FlexibleContexts #-}

module CodeGen where

import Control.Monad.State
import qualified Data.Map as Map
import Parser (Exp(..), Type(..)) -- Usar a AST definida anteriormente
import Semantics (TypeEnv, getDecl, Ident, checkExpr, inferType) -- pode nem ser necessario
import Text.Printf (toChar)
import Data.List (elemIndex)

-- Representação de Instruções
data Instr
  = MOVE Temp Temp                -- x = y
  | MOVEI Temp Int                  -- x = int
  | MOVER Temp Float
  -- | MOVEI Temp Int
  | OP BinOp Temp Temp Temp     -- x = y op z
  | LABEL Label                      -- Label:
  | JUMP Label                       -- goto Label
  | COND Temp Relop Temp Label Label -- if x op y goto Label1 else goto Label2
  | PRINTI Temp
  | PRINTR Temp
  | READLNI Temp
  | READLNR Temp
  -- | PARAM String                      -- Param x
  -- | CALL String Int                   -- Call func n_args
  -- | RETURN (Maybe String)             -- Return x
  deriving (Show, Eq)

data BinOp = Plus | Minus | Mult | Div | Mod -- | Rel Relop
  deriving (Show, Eq)

data Relop = Lt | Le | Gt | Ge | Eq | Ne
  deriving (Show, Eq)

type Temp = String
type Label = String
type Supply = (Int, Int) -- Contadores de temporários e etiquetas

-- Funções Auxiliares para Gerar Temporários e Rótulos
newTemp :: State Supply Temp
newTemp = do
  (temps, labels) <- get
  put (temps + 1, labels)
  return ("t" ++ show temps)

newLabel :: State Supply Label
newLabel = do
  (temps, labels) <- get
  put (temps, labels + 1)
  return ("L" ++ show labels)

 -- decrementa o contador
releaseTemp :: Int -> State Supply ()
releaseTemp tempStart = do
  (temps, labels) <- get
  when (temps > tempStart) $ put (temps - 1, labels)

-- Geração de Código Intermediário para Expressões
transExpr :: Exp -> TypeEnv -> Temp -> State Supply [Instr]
transExpr (NumNode n) env dest = return [MOVEI dest n]
transExpr (RealNode r) env dest = return [MOVER dest r]
transExpr (IdNode x) env dest = return [MOVE dest ("t" ++ show (nelem x env))]
transExpr (BoolNode b) env dest
  | b = return [MOVEI dest 1]
  | otherwise = return [MOVEI dest 0]
-- binop
transExpr (AddNode e1 e2) env dest = genBinOp e1 Plus e2 env dest
transExpr (SubNode e1 e2) env dest = genBinOp e1 Minus e2 env dest
transExpr (MultNode e1 e2) env dest = genBinOp e1 Mult e2 env dest
transExpr (DivNode e1 e2) env dest = genBinOp e1 Div e2 env dest
transExpr (ModNode e1 e2) env dest = genBinOp e1 Mod e2 env dest
-- relop
transExpr (LtNode e1 e2) env dest = genRelOp (LtNode e1 e2) dest env
transExpr (GtNode e1 e2) env dest = genRelOp (GtNode e1 e2) dest env
transExpr (LeNode e1 e2) env dest = genRelOp (LeNode e1 e2) dest env
transExpr (GeNode e1 e2) env dest = genRelOp (GeNode e1 e2) dest env
transExpr (EqNode e1 e2) env dest = genRelOp (EqNode e1 e2) dest env
transExpr (NeNode e1 e2) env dest = genRelOp (NeNode e1 e2) dest env
-- Operador !
transExpr (NotNode e) env dest = genRelOp (NotNode e) dest env
-- Operador &&
transExpr (AndNode e1 e2) env dest = genRelOp (AndNode e1 e2) dest env
-- Operador ||
transExpr (OrNode e1 e2) env dest = genRelOp (OrNode e1 e2) dest env
-- readln
transExpr ReadlnNode env dest = case inferType (IdNode $ getElmAtIndex (strToInt index) keys) env of -- TODO: verificar !!
  FloatType -> return [READLNR dest] 
  _ -> return [READLNI dest] -- tanto int como boolean seriam Integers (boolean seria 0 ou 1)
  where keys = Map.keys env
        index = tail dest

-- Operador Binário
genBinOp :: Exp -> BinOp -> Exp -> TypeEnv -> Temp -> State Supply [Instr]
genBinOp e1 op e2 env dest = do
  t1 <- newTemp
  t2 <- newTemp
  code1 <- transExpr e1 env t1
  code2 <- transExpr e2 env t2
  releaseTemp (length env)
  releaseTemp (length env)
  return (code1 ++ code2 ++ [OP op dest t1 t2])

genRelOp :: Exp -> Temp -> TypeEnv -> State Supply [Instr]
genRelOp exp dest env= do
  l1 <- newLabel
  l2 <- newLabel
  l3 <- newLabel
  code1 <- transCond exp l1 l2 env
  return $ code1 ++ [LABEL l1, MOVEI dest 1, JUMP l3] ++ [LABEL l2, MOVEI dest 0, LABEL l3]

transRelop :: Exp -> Relop -> Exp -> Label -> Label -> TypeEnv -> State Supply [Instr]
transRelop e1 op e2 lt lf env = do
  t1 <- newTemp
  t2 <- newTemp
  releaseTemp (length env)
  code1 <- transExpr e1 env t1
  code2 <- transExpr e2 env t2
  releaseTemp (length env)
  releaseTemp (length env)
  return (code1 ++ code2 ++ [COND t1 op t2 lt lf])

transCond :: Exp -> Label -> Label -> TypeEnv -> State Supply [Instr]
transCond (LtNode e1 e2) lt lf env= transRelop e1 Lt e2 lt lf env
transCond (GtNode e1 e2) lt lf env= transRelop e1 Gt e2 lt lf env
transCond (LeNode e1 e2) lt lf env= transRelop e1 Le e2 lt lf env
transCond (GeNode e1 e2) lt lf env= transRelop e1 Ge e2 lt lf env
transCond (EqNode e1 e2) lt lf env= transRelop e1 Eq e2 lt lf env
transCond (NeNode e1 e2) lt lf env= transRelop e1 Ne e2 lt lf env
transCond (AndNode e1 e2) lt lf env= do
  l2 <- newLabel
  code1 <- transCond e1 l2 lf env
  code2 <- transCond e2 lt lf env
  return $ code1 ++ [LABEL l2] ++ code2
transCond (OrNode e1 e2) lt lf env= do
  l2 <- newLabel
  code1 <- transCond e1 lt l2 env
  code2 <- transCond e2 lt lf env
  return $ code1 ++ [LABEL l2] ++ code2
transCond (BoolNode True) lt lf env= return [JUMP lt]
transCond (BoolNode False) lt lf env= return [JUMP lf]
transCond (NotNode e1) lt lf env= transCond e1 lf lt env
transCond exp lt lf env= do
  t <- newTemp
  code1 <- transExpr exp env t
  releaseTemp (length env)
  return $ code1 ++ [COND t Ne "0" lt lf]

-- Geração de Código para Comandos
genStm :: Exp -> TypeEnv -> State Supply [Instr]
genStm (AssignNode x expr) env = do
  transExpr expr env ("t" ++ show (nelem x env))

genStm ReturnNode env = return [JUMP "end"] -- TODO: verificar !!

genStm (PrintNode expr) env = do -- TODO: verificar !!
  t <- newTemp
  exprCode <- transExpr expr env t
  releaseTemp (length env)
  case checkExpr env expr of
    FloatType -> return $ exprCode ++ [PRINTR t]
    _ -> return $ exprCode ++ [PRINTI t] -- ou seja int e boolean (boolean seria 0 ou 1)

genStm (AddAssignNode id expr) env = genStm (AssignNode id (AddNode (IdNode id) expr)) env
genStm (SubAssignNode id expr) env = genStm (AssignNode id (SubNode (IdNode id) expr)) env
genStm (DivAssignNode id expr) env = genStm (AssignNode id (DivNode (IdNode id) expr)) env
genStm (ModAssignNode id expr) env = genStm (AssignNode id (ModNode (IdNode id) expr)) env
genStm (MultAssignNode id expr)env = genStm (AssignNode id (MultNode (IdNode id) expr)) env
genStm (IncrNode (IdNode id))  env = genStm (AssignNode id (AddNode (IdNode id) (NumNode 1))) env
genStm (DecrNode (IdNode id))  env = genStm (AssignNode id (SubNode (IdNode id) (NumNode 1))) env

-- todos sao iguais no codigo intermedio?
genStm (ValDecl (IdNode x) expr) env = genStm (AssignNode x expr) env
genStm (VarDecl (IdNode x) expr) env = genStm (AssignNode x expr) env
genStm (ValDeclTyped (IdNode x) ty expr) env = genStm (AssignNode x expr) env
genStm (VarDeclTyped (IdNode x) ty expr) env = genStm (AssignNode x expr) env

genStm (IfNode cond stmts) env = do
  lblTrue <- newLabel
  lblEnd <- newLabel
  condCode <- transCond cond lblTrue lblEnd env
  stmCode <- concat <$> mapM (`genStm` env) stmts
  return $ condCode ++ [LABEL lblTrue] ++ stmCode ++ [LABEL lblEnd]

genStm (IfElseNode cond stmts1 stmts2) env = do
  lblTrue <- newLabel
  lblFalse <- newLabel
  lblEnd <- newLabel
  condCode <- transCond cond lblTrue lblFalse env
  stmCode1 <- concat <$> mapM (`genStm` env) stmts1
  stmCode2 <- concat <$> mapM (`genStm` env) stmts2
  return $
    condCode ++ [LABEL lblTrue] ++ stmCode1 ++ [JUMP lblEnd]
    ++ [LABEL lblFalse] ++ stmCode2 ++ [LABEL lblEnd]

genStm (WhileNode cond stmts) env = do
  l1 <- newLabel
  l2 <- newLabel
  l3 <- newLabel
  condCode <- transCond cond l2 l3 env
  stmCode <- concat <$> mapM (`genStm` env) stmts
  return $ [LABEL l1] ++ condCode ++ [LABEL l2] ++ stmCode ++ [JUMP l1, LABEL l3]


-- Função Principal para Gerar Código de um Programa
genProgram :: Exp -> TypeEnv -> [Instr]
genProgram (ProgramNode stmts) env = LABEL "main" : evalState (concat <$> mapM (`genStm` env) stmts) (nIds, 0) ++ [LABEL "end"]
  where nIds = Map.size env
        --env = Map.env env

nelem :: Ident -> TypeEnv -> Int
nelem a env = case elemIndex a keys of
  Just idx -> idx
  Nothing  -> -1
  where keys = Map.keys env

strToInt :: String -> Int
strToInt str = read str :: Int

getElmAtIndex :: Int -> [a] -> a
getElmAtIndex 0 (x:xs) = x  -- Se o índice for 0, retorna o primeiro elemento
getElmAtIndex n (x:xs) = getElmAtIndex (n - 1) xs  -- Caso contrário, decremente n e faça recursão
