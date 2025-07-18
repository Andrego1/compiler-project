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
--translateAssign (MOVER dest r) =
--  "li.s $" ++ dest ++ ", " ++ show r



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


translateJump :: Instr -> String
translateJump (LABEL lbl) =
  lbl ++ ":"
translateJump (JUMP lbl) =
  "j " ++ lbl
translateJump (COND src1 rel src2 lblTrue lblFalse) =
  case rel of
    Lt -> "blt $" ++ src1 ++ ", $" ++ src2 ++ ", " ++ lblTrue ++ "\n" ++ "j " ++ lblFalse 
    Le -> "ble $" ++ src1 ++ ", $" ++ src2 ++ ", " ++ lblTrue ++ "\n" ++ "j " ++ lblFalse  
    Gt -> "bgt $" ++ src1 ++ ", $" ++ src2 ++ ", " ++ lblTrue ++ "\n" ++ "j " ++ lblFalse  
    Ge -> "bge $" ++ src1 ++ ", $" ++ src2 ++ ", " ++ lblTrue ++ "\n" ++ "j " ++ lblFalse 
    Eq -> "beq $" ++ src1 ++ ", $" ++ src2 ++ ", " ++ lblTrue ++ "\n" ++ "j " ++ lblFalse 
    Ne -> "bne $" ++ src1 ++ ", $" ++ src2 ++ ", " ++ lblTrue ++ "\n" ++ "j " ++ lblFalse

translateIO :: Instr -> String
translateIO (PRINTI temp) =
  unlines
    [ "move $a0, $" ++ temp   
    , "li $v0, 1"             
    , "syscall"               
    ]
--translateIO (PRINTR temp) =
--  unlines
--    [ "move.s $f12, $" ++ temp   
--    , "li $v0, 2"             
--    , "syscall"               
--    ]
translateIO (READLNI temp) =
  unlines
    [ "li $v0, 5"            
    , "syscall"             
    , "move $" ++ temp ++ ", $v0"
    ]
--translateIO (READLNR temp) =
--  unlines
--    [ "li $v0, 6"            
--    , "syscall"             
--    , "move.s $" ++ temp ++ ", $f0"
--    ]
translateIO _ = error "Invalid IO instruction for translateIO"


generateMIPS :: [Instr] -> [String]
generateMIPS instrs =
  [ ".text"
  , ".globl main"
  ] ++ concatMap translateInstr instrs ++ finalizeMIPS
  where
    translateInstr instr =
      case instr of
        MOVE{}     -> [translateAssign instr]
        MOVEI{}    -> [translateAssign instr]
        --MOVER{}    -> [translateAssign instr]
        OP{}       -> [translateBinOp instr]
        JUMP{}     -> [translateJump instr]
        LABEL{}    -> [translateJump instr]
        COND{}     -> [translateJump instr]
        PRINTI{}   -> lines (translateIO instr)
        --PRINTR{}   -> lines (translateIO instr)
        READLNI{}  -> lines (translateIO instr)
        --READLNR{}  -> lines (translateIO instr)
    finalizeMIPS =
      [ "li $v0, 10" 
      , "syscall"    
      ]

--writeMIPSFile :: FilePath -> [Instr] -> IO ()
--writeMIPSFile path instrs = do
--  let code = unlines $ generateMIPS instrs
--  writeFile path code