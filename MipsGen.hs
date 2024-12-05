module MipsGen where

import Control.Monad.State
import qualified Data.Map as Map
import CodeGen


-- Traduzir atribuições
translateAssign :: Instr -> String
translateAssign (MOVE dest src) =
  "move $" ++ dest ++ ", $" ++ src
translateAssign (MOVEI dest imm) =
  "li $" ++ dest ++ ", " ++ show imm
translateAssign (MOVER dest r) =
  "li $" ++ dest ++ ", " ++ show r
translateAssign (MOVEB dest b) =
  "li $" ++ dest ++ ", " ++ show b

-- Traduzir operações binárias
translateBinOp :: Instr -> String
translateBinOp (OP Plus dest src1 src2) =
  "add $" ++ dest ++ ", $" ++ src1 ++ ", $" ++ src2
translateBinOp (OP Minus dest src1 src2) =
  "sub $" ++ dest ++ ", $" ++ src1 ++ ", $" ++ src2
translateBinOp (OP Mult dest src1 src2) =
  "mul $" ++ dest ++ ", $" ++ src1 ++ ", $" ++ src2
translateBinOp (OP Div dest src1 src2) =
  "div $" ++ dest ++ ", $" ++ src1 ++ ", $" ++ src2
translateBinOp (OP Mod dest src1 src2) =
  "rem $" ++ dest ++ ", $" ++ src1 ++ ", $" ++ src2
-- ESTES DOIS ULTIMOS NAO FAZEM SENTIDO testa exemplos de && e || em Main
--translateBinOp (OP And dest src1 src2) =
--  "and $" ++ dest ++ ", $" ++ src1 ++ ", $" ++ src2
--translateBinOp (OP Or dest src1 src2) =
--  "or $" ++ dest ++ ", $" ++ src1 ++ ", $" ++ src2
-- Adicione mais operações

translateJump :: Instr -> String -- nao sei se esta completo
translateJump (LABEL lbl) =
  lbl ++ ":"
translateJump (JUMP lbl) =
  "j " ++ lbl
translateJump (COND src1 rel src2 lblTrue lblFalse) =
  case rel of
    Lt -> "blt " ++ src1 ++ ", " ++ src2 ++ ", " ++ lblTrue
    Le -> "ble " ++ src1 ++ ", " ++ src2 ++ ", " ++ lblTrue
    Gt -> "bgt " ++ src1 ++ ", " ++ src2 ++ ", " ++ lblTrue
    Ge -> "bge " ++ src1 ++ ", " ++ src2 ++ ", " ++ lblTrue
    Eq -> "beq " ++ src1 ++ ", " ++ src2 ++ ", " ++ lblTrue
    Ne -> "bne " ++ src1 ++ ", " ++ src2 ++ ", " ++ lblTrue

generateMIPS :: [Instr] -> [String]
generateMIPS =  map translateInstr
  where
    translateInstr instr =
      case instr of
        MOVE{} -> translateAssign instr
        MOVEI{} -> translateAssign instr
        MOVER{} -> translateAssign instr
        MOVEB{} -> translateAssign instr
        OP{} -> translateBinOp instr
        JUMP{} -> translateJump instr
        LABEL{} -> translateJump instr
        COND{} -> translateJump instr

--writeMIPSFile :: FilePath -> [Instr] -> IO ()
--writeMIPSFile path instrs = do
--  let code = generateMIPS instrs
--  writeFile path code
