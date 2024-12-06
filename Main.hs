module Main where

import Lexer
import Parser
import Semantics
import CodeGen
import MipsGen

main :: IO ()
main = do
  txt <- getContents

  -- Imprime tokens
  putStrLn "Tokens:"
  let tokens = alexScanTokens txt
  print tokens
  putStrLn "" 

  -- Imprime a AST
  putStrLn "AST:"
  let ast = parse tokens
  print ast
  putStrLn ""  

  -- Imprime a Análise Semântica True se tudo esta bem
  putStrLn "Semantic Analysis:"
  let semantic = checkProgram ast
  print semantic
  putStrLn ""  

  -- Imprime a Tabela de Símbolos
  let symbolTable = getDecl $ aux ast
  putStrLn "Symbol Table:"
  print symbolTable
  putStrLn ""  

  -- Imprime o Código Intermediário
  let intCode = genProgram ast symbolTable
  putStrLn "Intermediate Code:"
  printInterm intCode
  putStrLn "" 

  -- Imprime o código MIPS
  putStrLn "MIPS Code:"
  let mips = generateMIPS intCode
  printMips mips


aux :: Exp -> [Exp]
aux (ProgramNode stms) = stms

printMips :: [String] -> IO ()
printMips = mapM_ putStrLn

printInterm :: [Instr] -> IO ()
printInterm = mapM_ print
