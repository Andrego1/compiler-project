module Main where

import Lexer
import Parser

main :: IO ()
main = do
  txt <- getContents
  print("Tokens: ")
  print(alexScanTokens txt)
  print("AST: ")  
  print(parse $ alexScanTokens txt)