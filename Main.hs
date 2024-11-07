module Main where

import Lexer
import Parser

main :: IO ()
main = do
  txt <- getContents
  print("Tokens: ")
  print(alexScanTokens txt) -- ver se esta tudo bem
  print("AST: ")  
  print(parse $ alexScanTokens txt)