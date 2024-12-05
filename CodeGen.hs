{-# LANGUAGE FlexibleContexts #-}

module CodeGen where

import Control.Monad.State
import qualified Data.Map as Map
import Parser (Exp(..), Type(..)) -- Usar a AST definida anteriormente
import Semantics (TypeEnv, getDecl, Ident) -- pode nem ser necessario
import Text.Printf (toChar)

-- Representação de Instruções
data Instr
  = MOVE Temp Temp                -- x = y
  | MOVEI Temp Int                  -- x = int
  | MOVER Temp Float
  | MOVEB Temp Int
  | OP BinOp Temp Temp Temp     -- x = y op z
  | LABEL Label                      -- Label:
  | JUMP Label                       -- goto Label
  | COND Temp Relop Temp Label Label -- if x op y goto Label1 else goto Label2
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

releaseTemp :: State Supply ()
releaseTemp = do
  (n, otherState) <- get
  put (n - 1, otherState) -- decrementa o contador

-- Geração de Código Intermediário para Expressões
transExpr :: Exp -> [Ident] -> Temp -> State Supply [Instr]
transExpr (NumNode n) keys dest = return [MOVEI dest n]
transExpr (RealNode r) keys dest = return [MOVER dest r]
transExpr (IdNode x) keys dest = return [MOVE dest ("t" ++ show (nelem x keys))]
transExpr (BoolNode b) keys dest
  | b = return [MOVEB dest 1]
  | otherwise = return [MOVEB dest 0]
-- binop
transExpr (AddNode e1 e2) keys dest = genBinOp e1 Plus e2 keys dest
transExpr (SubNode e1 e2) keys dest = genBinOp e1 Minus e2 keys dest
transExpr (MultNode e1 e2) keys dest = genBinOp e1 Mult e2 keys dest
transExpr (DivNode e1 e2) keys dest = genBinOp e1 Div e2 keys dest
transExpr (ModNode e1 e2) keys dest = genBinOp e1 Mod e2 keys dest
-- relop
transExpr (LtNode e1 e2) keys dest = genRelOp (LtNode e1 e2) dest keys
transExpr (GtNode e1 e2) keys dest = genRelOp (GtNode e1 e2) dest keys
transExpr (LeNode e1 e2) keys dest = genRelOp (LeNode e1 e2) dest keys
transExpr (GeNode e1 e2) keys dest = genRelOp (GeNode e1 e2) dest keys
transExpr (EqNode e1 e2) keys dest = genRelOp (EqNode e1 e2) dest keys
transExpr (NeNode e1 e2) keys dest = genRelOp (NeNode e1 e2) dest keys
-- Operador !
transExpr (NotNode e) keys dest = genRelOp (NotNode e) dest keys
-- Operador &&
transExpr (AndNode e1 e2) keys dest = genRelOp (AndNode e1 e2) dest keys
-- Operador ||
transExpr (OrNode e1 e2) keys dest = genRelOp (OrNode e1 e2) dest keys

-- Operador Binário
genBinOp :: Exp -> BinOp -> Exp -> [Ident] -> Temp -> State Supply [Instr]
genBinOp e1 op e2 keys dest = do
  t1 <- newTemp
  t2 <- newTemp
  code1 <- transExpr e1 keys t1
  code2 <- transExpr e2 keys t2
  releaseTemp
  releaseTemp
  return (code1 ++ code2 ++ [OP op dest t1 t2])

genRelOp :: Exp -> Temp -> [Ident] -> State Supply [Instr]
genRelOp exp dest keys= do
  l1 <- newLabel
  l2 <- newLabel
  l3 <- newLabel
  code1 <- transCond exp l1 l2 keys
  return $ code1 ++ [LABEL l1, MOVEB dest 1, JUMP l3] ++ [LABEL l2, MOVEB dest 0, LABEL l3]

transRelop :: Exp -> Relop -> Exp -> Label -> Label -> [Ident] -> State Supply [Instr]
transRelop e1 op e2 lt lf keys = do
  t1 <- newTemp
  t2 <- newTemp
  releaseTemp
  code1 <- transExpr e1 keys t1
  code2 <- transExpr e2 keys t2
  releaseTemp
  releaseTemp
  return (code1 ++ code2 ++ [COND t1 op t2 lt lf])

transCond :: Exp -> Label -> Label -> [Ident] -> State Supply [Instr]
transCond (LtNode e1 e2) lt lf keys= transRelop e1 Lt e2 lt lf keys
transCond (GtNode e1 e2) lt lf keys= transRelop e1 Gt e2 lt lf keys
transCond (LeNode e1 e2) lt lf keys= transRelop e1 Le e2 lt lf keys
transCond (GeNode e1 e2) lt lf keys= transRelop e1 Ge e2 lt lf keys
transCond (EqNode e1 e2) lt lf keys= transRelop e1 Eq e2 lt lf keys
transCond (NeNode e1 e2) lt lf keys= transRelop e1 Ne e2 lt lf keys
transCond (AndNode e1 e2) lt lf keys= do
  l2 <- newLabel
  code1 <- transCond e1 l2 lf keys
  code2 <- transCond e2 lt lf keys
  return $ code1 ++ [LABEL l2] ++ code2
transCond (OrNode e1 e2) lt lf keys= do
  l2 <- newLabel
  code1 <- transCond e1 lt l2 keys
  code2 <- transCond e2 lt lf keys
  return $ code1 ++ [LABEL l2] ++ code2
transCond (BoolNode True) lt lf keys= return [JUMP lt]
transCond (BoolNode False) lt lf keys= return [JUMP lf]
transCond (NotNode e1) lt lf keys= transCond e1 lf lt keys
transCond exp lt lf keys= do
  t <- newTemp
  code1 <- transExpr exp keys t
  releaseTemp
  return $ code1 ++ [COND t Ne "0" lt lf]

-- Geração de Código para Comandos
genStm :: Exp -> [Ident] -> State Supply [Instr]
genStm (AssignNode x expr) keys = do
  transExpr expr keys ("t" ++ show (nelem x keys))

genStm (AddAssignNode id expr) keys = genStm (AssignNode id (AddNode (IdNode id) expr)) keys
genStm (SubAssignNode id expr) keys = genStm (AssignNode id (SubNode (IdNode id) expr)) keys
genStm (DivAssignNode id expr) keys = genStm (AssignNode id (DivNode (IdNode id) expr)) keys
genStm (ModAssignNode id expr) keys = genStm (AssignNode id (ModNode (IdNode id) expr)) keys
genStm (MultAssignNode id expr)keys = genStm (AssignNode id (MultNode (IdNode id) expr)) keys
genStm (IncrNode (IdNode id))  keys = genStm (AssignNode id (AddNode (IdNode id) (NumNode 1))) keys
genStm (DecrNode (IdNode id))  keys = genStm (AssignNode id (SubNode (IdNode id) (NumNode 1))) keys

-- todos sao iguais no codigo intermedio?
genStm (ValDecl (IdNode x) expr) keys = genStm (AssignNode x expr) keys
genStm (VarDecl (IdNode x) expr) keys = genStm (AssignNode x expr) keys
genStm (ValDeclTyped (IdNode x) ty expr) keys = genStm (AssignNode x expr) keys
genStm (VarDeclTyped (IdNode x) ty expr) keys = genStm (AssignNode x expr) keys

genStm (IfNode cond stmts) keys = do
  lblTrue <- newLabel
  lblEnd <- newLabel
  condCode <- transCond cond lblTrue lblEnd keys
  stmCode <- concat <$> mapM (`genStm` keys) stmts
  return $ condCode ++ [LABEL lblTrue] ++ stmCode ++ [LABEL lblEnd]

genStm (IfElseNode cond stmts1 stmts2) keys = do
  lblTrue <- newLabel
  lblFalse <- newLabel
  lblEnd <- newLabel
  condCode <- transCond cond lblTrue lblFalse keys
  stmCode1 <- concat <$> mapM (`genStm` keys) stmts1
  stmCode2 <- concat <$> mapM (`genStm` keys) stmts2
  return $
    condCode ++ [LABEL lblTrue] ++ stmCode1 ++ [JUMP lblEnd]
    ++ [LABEL lblFalse] ++ stmCode2 ++ [LABEL lblEnd]

genStm (WhileNode cond stmts) keys = do
  l1 <- newLabel
  l2 <- newLabel
  l3 <- newLabel
  condCode <- transCond cond l2 l3 keys
  stmCode <- concat <$> mapM (`genStm` keys) stmts
  return $ [LABEL l1] ++ condCode ++ [LABEL l2] ++ stmCode ++ [JUMP l1, LABEL l3]


-- Função Principal para Gerar Código de um Programa
genProgram :: Exp -> TypeEnv -> [Instr]
genProgram (ProgramNode stmts) env = evalState (concat <$> mapM (`genStm` keys) stmts) (nIds, 0)
  where nIds = Map.size env
        keys = Map.keys env

nelem :: Ident -> [Ident] -> Int
nelem a [] = 0
nelem a (x:xs)
  | a == x = 0
  | otherwise = 1 + nelem a xs
