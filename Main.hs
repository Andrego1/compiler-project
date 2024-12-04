module Main where

import Lexer
import Parser
import Semantics
import CodeGen

main :: IO ()
main = do
  txt <- getContents
  print("Tokens: ")
  let tokens = alexScanTokens txt
  print(tokens)
  print("AST: ")  
  let ast = parse tokens
  print(ast)
  print("Semantic Analysis: ")
  let semantic = checkProgram ast
  print(semantic)
  let intCode = genProgram ast
  print("Intermidiary Code:")
  print(intCode)