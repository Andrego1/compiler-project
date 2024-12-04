module Mips where

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
translateBinOp (OP And dest src1 src2) =
  "and $" ++ dest ++ ", $" ++ src1 ++ ", $" ++ src2
translateBinOp (OP Or dest src1 src2) =
  "or $" ++ dest ++ ", $" ++ src1 ++ ", $" ++ src2
-- Adicione mais operações

translateJump :: Instr -> String
translateJump (LABEL lbl) =
  lbl ++ ":"
translateJump (JUMP lbl) =
  "j " ++ lbl
translateJump (COND src1 rel src2 lblTrue lblFalse) =
  case rel of
    Lt -> "slt $t0, $" ++ src1 ++ ", $" ++ src2 ++ "\n" ++
          "bne $t0, $zero, " ++ lblTrue ++ "\n" ++
          "j " ++ lblFalse
    Le -> "slt $t0, $" ++ src2 ++ ", $" ++ src1 ++ "\n" ++
          "beq $t0, $zero, " ++ lblTrue ++ "\n" ++
          "j " ++ lblFalse
    Gt -> "slt $t0, $" ++ src2 ++ ", $" ++ src1 ++ "\n" ++
          "bne $t0, $zero, " ++ lblTrue ++ "\n" ++
          "j " ++ lblFalse
    Ge -> "slt $t0, $" ++ src1 ++ ", $" ++ src2 ++ "\n" ++
          "beq $t0, $zero, " ++ lblTrue ++ "\n" ++
          "j " ++ lblFalse
    Eq -> "beq $" ++ src1 ++ ", $" ++ src2 ++ ", " ++ lblTrue ++ "\n" ++
          "j " ++ lblFalse
    Ne -> "bne $" ++ src1 ++ ", $" ++ src2 ++ ", " ++ lblTrue ++ "\n" ++
          "j " ++ lblFalse

generateMIPS :: [Instr] -> String
generateMIPS instrs =
  unlines $ map translateInstr instrs
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
        _ -> error "Instrução não suportada"

writeMIPSFile :: FilePath -> [Instr] -> IO ()
writeMIPSFile path instrs = do
  let code = generateMIPS instrs
  writeFile path code
