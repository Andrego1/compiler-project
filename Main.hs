module Main where

import Lexer
import Parser
import Semantics
import CodeGen

import MipsGen

main :: IO ()
main = do
  txt <- getContents
  print "Tokens: "
  let tokens = alexScanTokens txt
  print (tokens)
  print "AST: "
  let ast = parse tokens
  print ast
  print "Semantic Analysis: "
  let semantic = checkProgram ast
  print semantic
  let symbolTable = getDecl $ aux ast
  print symbolTable
  let intCode = genProgram ast symbolTable
  print "Intermidiary Code:"
  --print(intCode)
  printInterm intCode
  print "MIPS:"
  let mips = generateMIPS intCode
  --print mips
  printMips mips

aux :: Exp -> [Exp]
aux (ProgramNode stms) = stms

printMips :: [String] -> IO ()
printMips [] = return ()
printMips (x:xs) = do
  print x
  printMips xs

printInterm :: [Instr] -> IO ()
printInterm [] = return ()
printInterm (x:xs) = do
  print x
  printInterm xs
