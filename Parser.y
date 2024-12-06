{
module Parser where
import Lexer
}

%name parse
%tokentype { Token }
%error { parseError }

%token

-- Tokens para identificadores e valores
id      {ID $$}
num     {NUM $$}
real    {REAL $$}
--str     {STR $$}

-- Tokens para caracteres de pontuação
'('     {LPAREN}
')'     {RPAREN}
'{'     {LBRACE}
'}'     {RBRACE}
';'     {SEMICOLON}

-- Tokens para palavras-chave
if      {IF}
else    {ELSE}
while   {WHILE}

-- Tokens para tipos
int     {INT}
float   {FLOAT}
boolean {BOOLEAN}
--string  {STRING}

-- Tokens para declaração de função
fun     {FUN}
main    {MAIN}

-- Tokens para declarações mutáveis e imutáveis
val     {VAL}
var     {VAR}

-- Tokens para operadores aritméticos e lógicos
'+'     {PLUS}
'-'     {MINUS}
'*'     {MULT}
'/'     {DIV}
'%'     {MOD}

-- Tokens para operadores de comparação
'>'     {G}
">="    {GEQ}
'<'     {L}
"<="    {LEQ}
"=="    {EQUAL}
"!="    {NEQUAL}
"&&"    {AND}
"||"    {OR}
'!'     {NOT}

-- Tokens para operadores de incremento e decremento
"++"    {ICR}
"--"    {DCR}

-- Tokens para operadores de atribuição
'='     {ATRIB}
"+="    {ATRIB_PLUS}
"-="    {ATRIB_MINUS}
"*="    {ATRIB_MULT}
"/="    {ATRIB_DIV}
"%="    {ATRIB_MOD}

-- Tokens para valores booleanos
true    {TRUE}
false   {FALSE}

-- Tokens para funções de entrada e saída
readln  {READLN}
print   {PRINT}

return  {RETURN}

-- Token para anotação de tipo
':'     {COLON} 

-- Precedência e a associatividade dos operadores
%left "||"
%left "&&"
%nonassoc "==" "!="
%nonassoc '>' ">=" '<' "<="
%left '+' '-'
%left '*' '/' '%'
%right '!'
%right "++" "--"
%left NEG

%% 

-- Define o ponto de entrada
Fun : fun main '(' ')' '{' Commands '}'  { ProgramNode $6 } 

-- Lista de comandos agora com possibilidade de por `;`
Commands : Command ';' Commands         { $1 : $3 }
         | Command Commands             { $1 : $2 }
         | {- empty -}                  { [] }

-- Define o que constitui um comando
Command : Decl                          { $1 }
        | Assign                        { $1 }
        --| Expr                          { $1 }
        | If                            { $1 }
        | While                         { $1 }
        | Print                         { $1 }
        | return                        {ReturnNode}
        --| Readln                        { $1 }

-- Comando para impressão
Print : print '(' InitExp ')'           { PrintNode $3 }

-- Comando para leitura da entrada
Readln : readln '(' ')'                 { ReadlnNode }

-- Estrutura condicional `if`
If : if '(' Expr ')' Aux_if                                { IfNode $3 $5 }
   --| if '(' Expr ')' '{' Commands '}'                       { IfNode $3 $6 }
   | if '(' Expr ')' Aux_if else Aux_if                   { IfElseNode $3 $5 $7 }
   --| if '(' Expr ')' '{' Commands '}' else '{' Commands '}' { IfElseNode $3 $6 $10 }

Aux_if : Command                   { [$1] }
       | '{' Commands '}'          { $2 }

-- Estrutura de repetição `while`
While : while '(' Expr ')' Command           { WhileNode $3 [$5] }
      | while '(' Expr ')' '{' Commands '}'  { WhileNode $3 $6 }

-- Declaração de tipos para variáveis
Type : int                              { IntType }
     | float                            { FloatType }
     | boolean                          { BoolType }
     --| string                           { StringType }

-- Inicialização permitidas
InitExp : Expr                          { $1 }  -- Para int e float
        --| Sexp                          { $1 }  -- Para string
        --| Readln                        { ReadlnNode } -- Leitura da entrada padrão


-- Declaração de variáveis mutáveis (`var`) e imutáveis (`val`)
Decl : var id '=' InitExp               { VarDecl (IdNode $2) $4 }
     | val id '=' InitExp               { ValDecl (IdNode $2) $4 }
     | var id ':' Type '=' InitExp      { VarDeclTyped (IdNode $2) $4 $6 }
     | val id ':' Type '=' InitExp      { ValDeclTyped (IdNode $2) $4 $6 }

-- Estrutura de atribuição e operações compostas
Assign : id '=' Expr                    { AssignNode $1 $3 }      -- Atribuição direta
       | id "+=" Expr                   { AddAssignNode $1 $3 }   -- Atribuição com soma
       | id "-=" Expr                   { SubAssignNode $1 $3 }   -- Atribuição com soma
       | id "*=" Expr                   { MultAssignNode $1 $3 }  -- Atribuição com multiplicação
       | id "/=" Expr                   { DivAssignNode $1 $3 }   -- Atribuição com divisão
       | id "%=" Expr                   { ModAssignNode $1 $3 }   -- Atribuição com módulo
       | PostIncDecExp                  { $1 }

-- Definição de expressões, incluindo operadores matemáticos e lógicos
Expr : Expr '+' Expr                    { AddNode $1 $3 }
     | Expr '-' Expr                    { SubNode $1 $3 }
     | Expr '*' Expr                    { MultNode $1 $3 }
     | Expr '/' Expr                    { DivNode $1 $3 }
     | Expr '%' Expr                    { ModNode $1 $3 }
     --| PostIncDecExp                    { $1 }
     | Expr "&&" Expr                   { AndNode $1 $3 }
     | Expr "||" Expr                   { OrNode $1 $3 }
     | Expr '>' Expr                    { GtNode $1 $3 }
     | Expr ">=" Expr                   { GeNode $1 $3 }
     | Expr '<' Expr                    { LtNode $1 $3 }
     | Expr "<=" Expr                   { LeNode $1 $3 }
     | Expr "==" Expr                   { EqNode $1 $3 }
     | Expr "!=" Expr                   { NeNode $1 $3 }
     | '!' Expr                         { NotNode $2 }
     | '-' Expr %prec NEG               { $2 }
     | Atomic                           { $1 }
     | Readln                           { $1 }


-- Pós-incremento e pós-decremento
PostIncDecExp : id "++"                 { IncrNode (IdNode $1) }
              | id "--"                 { DecrNode (IdNode $1) }

-- Definição de valores atômicos
Atomic : id                             {IdNode $1}
       | num                            {NumNode $1}
       | real                           {RealNode $1}
       | true                           {BoolNode True}
       | false                          {BoolNode False}
       | '(' Expr ')'                     { $2 }

-- Expressão para string
--Sexp : str                              { StringNode $1 }

{
-- Estrutura da AST (Árvore Sintática Abstrata) com tipos e nós de operações
data Exp = ProgramNode [Exp]             -- Nó para encapsular a lista principal de comandos
         | NumNode Int
         | RealNode Float 
         | StringNode String
         | IdNode String
         | AddNode Exp Exp
         | SubNode Exp Exp
         | MultNode Exp Exp
         | DivNode Exp Exp
         | ModNode Exp Exp
         | IncrNode Exp
         | DecrNode Exp
         | BoolNode Bool
         | AndNode Exp Exp
         | OrNode Exp Exp
         | GtNode Exp Exp
         | GeNode Exp Exp
         | LtNode Exp Exp
         | LeNode Exp Exp
         | EqNode Exp Exp
         | NeNode Exp Exp
         | NotNode Exp
         | IfNode Exp [Exp]
         | IfElseNode Exp [Exp] [Exp]
         | WhileNode Exp [Exp]
         | PrintNode Exp
         | ReadlnNode
         | ReturnNode
         | VarDecl Exp Exp
         | VarDeclTyped Exp Type Exp
         | ValDecl Exp Exp
         | ValDeclTyped Exp Type Exp
         | AssignNode String Exp
         | AddAssignNode String Exp
         | SubAssignNode String Exp
         | MultAssignNode String Exp
         | DivAssignNode String Exp
         | ModAssignNode String Exp
         deriving (Show, Eq)
data Type = IntType | FloatType | BoolType | StringType deriving (Show, Eq) --TODO deicar se ter string por enquanto

parseError :: [Token] -> a
parseError toks = error $ "Erro de parsing: " ++ show toks
}

