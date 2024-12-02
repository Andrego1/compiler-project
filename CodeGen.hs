{-# LANGUAGE FlexibleContexts #-}

module CodeGen where

import Control.Monad.State
import qualified Data.Map as Map
import Parser (Exp(..), Type(..)) -- Usar a AST definida anteriormente

-- Representação de Instruções TAC
data Instr
  = MOVE Temp Temp                -- x = y
  | MOVEI Temp Int                  -- x = constante
  | OP BinOp Temp Temp Temp     -- x = y op z
  | LABEL Label                      -- Label:
  | JUMP Label                       -- goto Label
  | COND Temp BinOp Temp Label Label -- if x op y goto Label1 else goto Label2
  | PARAM String                      -- Param x
  | CALL String Int                   -- Call func n_args
  | RETURN (Maybe String)             -- Return x
  deriving (Show, Eq)

data BinOp = Plus | Minus | Mult | Div | Mod | Lt | Le | Gt | Ge | Eq | Neq
  deriving (Show, Eq)

type Temp = String
type Label = String
type Count = (Int, Int) -- Contadores de temporários e rótulos

-- Funções Auxiliares para Gerar Temporários e Rótulos
newTemp :: State Count Temp
newTemp = do
  (temps, labels) <- get
  put (temps + 1, labels)
  return ("t" ++ show temps)

newLabel :: State Count Label
newLabel = do
  (temps, labels) <- get
  put (temps, labels + 1)
  return ("L" ++ show labels)

-- Geração de Código Intermediário para Expressões
genExpr :: Exp -> String -> State Count [Instr]
genExpr (NumNode n) dest = return [MOVEI dest n]
genExpr (RealNode r) dest = return [MOVE dest (show r)]
genExpr (IdNode x) dest = return [MOVE dest x]

genExpr (AddNode e1 e2) dest = genBinOp Plus e1 e2 dest
genExpr (SubNode e1 e2) dest = genBinOp Minus e1 e2 dest
genExpr (MultNode e1 e2) dest = genBinOp Mult e1 e2 dest
genExpr (DivNode e1 e2) dest = genBinOp Div e1 e2 dest
genExpr (ModNode e1 e2) dest = genBinOp Mod e1 e2 dest

-- Comparações e Condicionais
genExpr (LtNode e1 e2) dest = genBinOp Lt e1 e2 dest
genExpr (GtNode e1 e2) dest = genBinOp Gt e1 e2 dest
genExpr (LeNode e1 e2) dest = genBinOp Le e1 e2 dest
genExpr (GeNode e1 e2) dest = genBinOp Ge e1 e2 dest
genExpr (EqNode e1 e2) dest = genBinOp Eq e1 e2 dest
genExpr (NeNode e1 e2) dest = genBinOp Neq e1 e2 dest

-- Operador Binário
genBinOp :: BinOp -> Exp -> Exp -> String -> State Count [Instr]
genBinOp op e1 e2 dest = do
  t1 <- newTemp
  t2 <- newTemp
  code1 <- genExpr e1 t1
  code2 <- genExpr e2 t2
  return (code1 ++ code2 ++ [OP op dest t1 t2])

-- Geração de Código para Comandos
genStm :: Exp -> State Count [Instr]
genStm (AssignNode (IdNode x) expr) = do
  code <- genExpr expr x
  return code

genStm (ValDecl (IdNode x) expr) = genStm (AssignNode (IdNode x) expr)
genStm (VarDecl (IdNode x) expr) = genStm (AssignNode (IdNode x) expr)

genStm (IfNode cond stmts) = do
  condVar <- newTemp
  lblTrue <- newLabel
  lblEnd <- newLabel
  condCode <- genExpr cond condVar
  stmCode <- concat <$> mapM genStm stmts
  return $ condCode ++ [COND condVar Eq "1" lblTrue lblEnd, LABEL lblTrue] ++ stmCode ++ [LABEL lblEnd]

genStm (IfElseNode cond stmts1 stmts2) = do
  condVar <- newTemp
  lblTrue <- newLabel
  lblFalse <- newLabel
  lblEnd <- newLabel
  condCode <- genExpr cond condVar
  stmCode1 <- concat <$> mapM genStm stmts1
  stmCode2 <- concat <$> mapM genStm stmts2
  return $
    condCode ++
    [COND condVar Eq "1" lblTrue lblFalse, LABEL lblTrue] ++
    stmCode1 ++ [JUMP lblEnd, LABEL lblFalse] ++ stmCode2 ++ [LABEL lblEnd]

genStm (WhileNode cond stmts) = do
  lblStart <- newLabel
  lblEnd <- newLabel
  condVar <- newTemp
  condCode <- genExpr cond condVar
  stmCode <- concat <$> mapM genStm stmts
  return $ [LABEL lblStart] ++ condCode ++ [COND condVar Eq "1" lblStart lblEnd] ++ stmCode ++ [JUMP lblStart, LABEL lblEnd]

{-
genStm (WhenNode expr branches) = do
  lblEnd <- newLabel
  branchCode <- concat <$> mapM (genWhenBranch expr lblEnd) branches
  return $ branchCode ++ [LABEL lblEnd]
-}

{-
genStm (FunDeclNode name params body) = do
  lblStart <- newLabel
  let paramMoves = [MOVE param ("param" ++ show i) | (param, i) <- zip (map fst params) [0..]]
  bodyCode <- concat <$> mapM genStm body
  return $ [LABEL lblStart] ++ paramMoves ++ bodyCode ++ [RETURN Nothing]
-}

{-
genStm (ReturnNode expr) = do
  temp <- newTemp
  code <- genExpr expr temp
  return $ code ++ [RETURN (Just temp)]

genStm _ = return []
-}

{-
genWhenBranch :: Exp -> Label -> (Exp, [Exp]) -> State Count [Instr]
genWhenBranch expr lblEnd (cond, stmts) = do
  condVar <- newTemp
  condCode <- genExpr cond condVar
  stmCode <- concat <$> mapM genStm stmts
  lblBranch <- newLabel
  return $ condCode ++ [COND condVar Eq "1" lblBranch lblEnd, LABEL lblBranch] ++ stmCode ++ [JUMP lblEnd]
-}

-- Função Principal para Gerar Código de um Programa
genProgram :: [Exp] -> [Instr]
genProgram stmts = evalState (concat <$> mapM genStm stmts) (0, 0)