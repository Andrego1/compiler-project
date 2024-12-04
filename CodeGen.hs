{-# LANGUAGE FlexibleContexts #-}

module CodeGen where

import Control.Monad.State
import qualified Data.Map as Map
import Parser (Exp(..), Type(..)) -- Usar a AST definida anteriormente
import Semantics (TypeEnv) -- pode nem ser necessario

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

data BinOp = Plus | Minus | Mult | Div | Mod | Rel Relop
  deriving (Show, Eq)

data Relop = Lt | Le | Gt | Ge | Eq | Ne
  deriving (Show, Eq)


--data Cond = AndNode Exp Exp | OrNode Exp Exp | NotNode Exp

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

-- Geração de Código Intermediário para Expressões
transExpr :: Exp -> Temp -> State Supply [Instr]
transExpr (NumNode n)  dest = return [MOVEI dest n]
transExpr (RealNode r) dest = return [MOVER dest r]
transExpr (IdNode x) dest = return [MOVE dest ("t" ++ x)]
transExpr (BoolNode b) dest
  | b = return [MOVEB dest 1]
  | otherwise = return [MOVEB dest 0]
-- binop
transExpr (AddNode e1 e2) dest = genBinOp e1 Plus e2 dest
transExpr (SubNode e1 e2) dest = genBinOp e1 Minus e2 dest
transExpr (MultNode e1 e2) dest = genBinOp e1 Mult e2 dest
transExpr (DivNode e1 e2) dest = genBinOp e1 Div e2 dest
transExpr (ModNode e1 e2) dest = genBinOp e1 Mod e2 dest
transExpr (LtNode e1 e2) dest = genBinOp e1 (Rel Lt) e2 dest
transExpr (GtNode e1 e2) dest = genBinOp e1 (Rel Gt) e2 dest
transExpr (LeNode e1 e2) dest = genBinOp e1 (Rel Le) e2 dest
transExpr (GeNode e1 e2) dest = genBinOp e1 (Rel Ge) e2 dest
transExpr (EqNode e1 e2) dest = genBinOp e1 (Rel Eq) e2 dest
transExpr (NeNode e1 e2) dest = genBinOp e1 (Rel Ne) e2 dest

-- Operador !
transExpr (NotNode e) dest = do
  t <- newTemp
  code <- transExpr e t
  return $ code ++ [MOVEB dest (1 - t)]

-- Operador &&
transExpr (AndNode e1 e2) dest = do
  lblFalse <- newLabel  
  lblEnd <- newLabel    
  t1 <- newTemp
  code1 <- transExpr e1 t1
  let test1 = [COND t1 Eq "0" lblFalse]
  t2 <- newTemp
  code2 <- transExpr e2 t2
  let moveE2 = [MOVE dest t2, JUMP lblEnd]
  let moveFalse = [LABEL lblFalse, MOVE dest "0"]
  return $ code1 ++ test1 ++ code2 ++ moveE2 ++ moveFalse ++ [LABEL lblEnd]

-- Operador ||
  transExpr (OrNode e1 e2) dest = do
  lblTrue <- newLabel   
  lblEnd <- newLabel  
  t1 <- newTemp
  code1 <- transExpr e1 t1
  let test1 = [COND t1 Ne "0" lblTrue]
  t2 <- newTemp
  code2 <- transExpr e2 t2
  let moveE2 = [MOVE dest t2, JUMP lblEnd]
  let moveTrue = [LABEL lblTrue, MOVE dest "1"]
  return $ code1 ++ test1 ++ code2 ++ moveE2 ++ moveTrue ++ [LABEL lblEnd]



-- Operador Binário
genBinOp ::  Exp -> BinOp -> Exp -> String -> State Supply [Instr]
genBinOp e1 op e2 dest = do
  t1 <- newTemp
  t2 <- newTemp
  code1 <- transExpr e1 t1
  code2 <- transExpr e2 t2
  return (code1 ++ code2 ++ [OP op dest t1 t2])


transRelop :: Exp -> Relop -> Exp -> Label -> Label -> State Supply [Instr]
transRelop e1 op e2 lt lf = do
  t1 <- newTemp
  t2 <- newTemp
  code1 <- transExpr e1 t1
  code2 <- transExpr e2 t2
  return (code1 ++ code2 ++ [COND t1 op t2 lt lf])

transCond :: Exp -> Label -> Label -> State Supply [Instr] 
transCond (LtNode e1 e2) lt lf = transRelop e1 Lt e2 lt lf
transCond (GtNode e1 e2) lt lf = transRelop e1 Gt e2 lt lf
transCond (LeNode e1 e2) lt lf = transRelop e1 Le e2 lt lf
transCond (GeNode e1 e2) lt lf = transRelop e1 Ge e2 lt lf
transCond (EqNode e1 e2) lt lf = transRelop e1 Eq e2 lt lf
transCond (NeNode e1 e2) lt lf = transRelop e1 Ne e2 lt lf
transCond (AndNode e1 e2) lt lf = do
  l2 <- newLabel
  code1 <- transCond e1 l2 lf
  code2 <- transCond e2 lt lf
  return $ code1 ++ [LABEL l2] ++ code2
transCond (OrNode e1 e2) lt lf = do
  l2 <- newLabel
  code1 <- transCond e1 lt l2
  code2 <- transCond e2 lt lf
  return $ code1 ++ [LABEL l2] ++ code2
transCond (BoolNode True) lt lf = return [JUMP lt]
transCond (BoolNode False) lt lf = return [JUMP lf]
transCond (NotNode e1) lt lf = transCond e1 lf lt
transCond exp lt lf = do
  t <- newTemp
  code1 <- transExpr exp t
  return $ code1 ++ [COND t Ne 0 lt lf]

-- Geração de Código para Comandos
genStm :: Exp -> State Supply [Instr]
genStm (AssignNode x expr) = do
  transExpr expr ("t" ++ x)

genStm (AddAssignNode id expr)  = genStm(AssignNode id (AddNode (IdNode id) expr))
genStm (SubAssignNode id expr)  = genStm(AssignNode id (SubNode (IdNode id) expr))
genStm (DivAssignNode id expr)  = genStm(AssignNode id (DivNode (IdNode id) expr))
genStm (ModAssignNode id expr)  = genStm(AssignNode id (ModNode (IdNode id) expr))
genStm (MultAssignNode id expr) = genStm(AssignNode id (MultNode (IdNode id) expr))
genStm (IncrNode (IdNode id))   = genStm(AssignNode id (AddNode (IdNode id) (NumNode 1)))
genStm (DecrNode (IdNode id))   = genStm(AssignNode id (SubNode (IdNode id) (NumNode 1)))

-- todos sao iguais no codigo intermedio?
genStm (ValDecl (IdNode x) expr) = genStm (AssignNode x expr)
genStm (VarDecl (IdNode x) expr) = genStm (AssignNode x expr)
genStm (ValDeclTyped (IdNode x) ty expr) = genStm (AssignNode x expr)
genStm (VarDeclTyped (IdNode x) ty expr) = genStm (AssignNode x expr)

genStm (IfNode cond stmts) = do
  lblTrue <- newLabel
  lblEnd <- newLabel
  condCode <- transCond cond lblTrue lblEnd
  stmCode <- concat <$> mapM genStm stmts
  return $ condCode ++ [LABEL lblTrue] ++ stmCode ++ [LABEL lblEnd]

genStm (IfElseNode cond stmts1 stmts2) = do
  lblTrue <- newLabel
  lblFalse <- newLabel
  lblEnd <- newLabel
  condCode <- transCond cond lblTrue lblFalse
  stmCode1 <- concat <$> mapM genStm stmts1
  stmCode2 <- concat <$> mapM genStm stmts2
  return $
    condCode ++ [LABEL lblTrue] ++ stmCode1 ++ [JUMP lblEnd] 
    ++ [LABEL lblFalse] ++ stmCode2 ++ [LABEL lblEnd]

genStm (WhileNode cond stmts) = do
  l1 <- newLabel
  l2 <- newLabel
  l3 <- newLabel
  condCode <- transCond cond l2 l3
  stmCode <- concat <$> mapM genStm stmts
  return $ [LABEL l1] ++ condCode ++ [LABEL l2] ++ stmCode ++ [JUMP l1, LABEL l3]


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
  code <- transExpr expr temp
  return $ code ++ [RETURN (Just temp)]

genStm _ = return []
-}

{-
genWhenBranch :: Exp -> Label -> (Exp, [Exp]) -> State Supply [Instr]
genWhenBranch expr lblEnd (cond, stmts) = do
  condVar <- newTemp
  condCode <- transExpr cond condVar
  stmCode <- concat <$> mapM genStm stmts
  lblBranch <- newLabel
  return $ condCode ++ [COND condVar Eq "1" lblBranch lblEnd, LABEL lblBranch] ++ stmCode ++ [JUMP lblEnd]
-}

-- Função Principal para Gerar Código de um Programa
genProgram :: [Exp] -> [Instr]
genProgram stmts = evalState (concat <$> mapM genStm stmts) (0, 0)
