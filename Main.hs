module Main where

import Lexer
import Parser

main :: IO ()
main = do
  txt <- getContents
  print(alexScanTokens txt) -- ver se esta tudo bem
  print(parse $ alexScanTokens txt)