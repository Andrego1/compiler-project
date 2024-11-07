-- Lexer para projeto Compiladores (subconjunto de kotlin)

{
module Lexer where
}

%wrapper "basic"

-- Definimos macros para simplificar as expressões regulares
$digit   = 0-9            -- dígitos
$alpha   = [_a-zA-Z]      -- caracteres alfabéticos

-- Regras de correspondência para tokens
tokens :-

    -- Ignora espaços em branco
    $white                   ;

    -- Palavras-chave
    if                          { \_ -> IF }
    else                        {\_ -> ELSE}
    while                       { \_ -> WHILE }
    
    Int                         { \_ -> INT }
    Float                       { \_ -> FLOAT }
    Boolean                     {\_ -> BOOLEAN }
    String                      {\_ -> STRING }

    fun                         { \_ -> FUN }
    main                        { \_ -> MAIN}

    var                         { \_ -> VAR }
    val                         { \_ -> VAL}

    true                        {\_ -> TRUE}
    false                       {\_ -> FALSE} 

    print                       {\_ -> PRINT}
    readln                      {\_ -> READLN}


    -- Identificadores 
    $alpha($alpha|$digit)*      { \s -> ID s }

    -- Números inteiros
    "-"?$digit+                 { \s -> NUM (read s) } -- "-"? para suportar numeros negativos

    -- Números reais
    "-"?$digit+"."$digit+       { \s -> REAL (read s) } -- "-"? para suportar numeros negativos

    -- Strings -- 
    \"([^\"]|\\.)*\"            { \s -> STR $ replaceEscapedChars (init (tail s)) }

    -- Char pode nao ser necessario
    --"'"(~\')"'"                     {\c -> CHAR c}
    -- duvida tambem que tipos sao necessarios


    -- Comentários de linha única (//...)
    "//".*                      ;

    -- Comentários de bloco (/* ... */) NESTED nao necessario
    "/*"(~\*|\*~\/|\**\n)*"*/"  ;

    -- Caracteres de pontuação
    "("                         { \_ -> LPAREN }
    ")"                         { \_ -> RPAREN }
    "{"                         { \_ -> LBRACE }
    "}"                         { \_ -> RBRACE }
    -- ","                         { \_ -> COMMA }

    -- Operadores
    "+"                         { \_ -> PLUS}
    "-"                         { \_ -> MINUS}
    "*"                         { \_ -> MULT}
    "/"                         { \_ -> DIV}
    "%"                         { \_ -> MOD}

    "||"                        {\_ -> OR}
    "&&"                        {\_ -> AND}
    "!"                         {\_ -> NOT}

    -- Incrementadores
    "++"                        {\_ -> ICR}
    "--"                        {\_ -> DCR}

    -- Comparacao
    ">"                         {\_ -> G}
    ">="                        {\_ -> GEQ}
    "<"                         {\_ -> L}
    "<="                        {\_ -> LEQ}

    -- Atribuicao
    "="                         {\_ -> ATRIB}
    "+="                        {\_ -> ATRIB_PLUS}
    "-="                        {\_ -> ATRIB_MINUS}
    "*="                        {\_ -> ATRIB_MULT}
    "/="                        {\_ -> ATRIB_DIV}
    "%="                        {\_ -> ATRIB_MOD}
    
    -- Igualdade
    "=="                        {\_ -> EQUAL}
    "!="                        {\_ -> NEQUAL}

    -- Caracter de anotação de tipo
    ":"                         { \_ -> COLON }

{
data Token = ID String       -- e.g. xy123
            | NUM Int        -- e.g. 123
            | REAL Float     -- e.g. 123.45
            | STR String  -- e.g "andre"
            -- | CHAR Char      -- e.g 'a'
            
            | LPAREN         -- (
            | RPAREN         -- )
            | LBRACE         -- {
            | RBRACE         -- }
            -- | COMMA          -- ,

            | IF             -- if
            | ELSE           -- else
            | WHILE          -- while

            | INT            -- int
            | FLOAT          -- float
            | BOOLEAN
            | STRING

            | FUN            -- e.g. fun main
            | MAIN           -- para fun main

            | VAL            -- var (mutavel)
            | VAR            -- val (imutavel)

            | PLUS           -- +
            | MINUS          -- -
            | MULT           -- *
            | DIV            -- /
            | MOD            -- %

            | G              -- >
            | GEQ            -- >=
            | L              -- <
            | LEQ            -- <=
            | EQUAL          -- ==
            | NEQUAL         -- !=
            | AND
            | OR
            | NOT

            | DCR            -- --
            | ICR            -- ++

            | ATRIB          -- =
            | ATRIB_PLUS
            | ATRIB_MINUS
            | ATRIB_MULT
            | ATRIB_DIV
            | ATRIB_MOD

            | TRUE
            | FALSE


            | READLN
            | PRINT

            | COLON           -- :
            deriving (Show, Eq)    

-- lidar com \n e etc...
replaceEscapedChars :: String -> String
replaceEscapedChars [] = []
replaceEscapedChars ('\\':'n':xs)  = '\n' : replaceEscapedChars xs    -- nova linha
replaceEscapedChars ('\\':'t':xs)  = '\t' : replaceEscapedChars xs    -- tabulação
replaceEscapedChars ('\\':'r':xs)  = '\r' : replaceEscapedChars xs    -- retorno de carro
replaceEscapedChars ('\\':'"':xs)  = '\"' : replaceEscapedChars xs    -- aspa dupla
replaceEscapedChars ('\\':'\\':xs) = '\\' : replaceEscapedChars xs    -- barra invertida
replaceEscapedChars (x:xs)         = x    : replaceEscapedChars xs    -- outros caracteres
}