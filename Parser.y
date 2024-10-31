{
module Parser where
import Lexer
}

%name parse
%tokentype { Token }
%error { parseError }

%token

id      {ID $$}
num     {NUM $$}
real    {REAL $$}
string  {STRING $$}
'('     {LPAREN}
')'     {RPAREN}
'{'     {LBRACE}
'}'     {RBRACE}
','     {COMMA}
if      {IF}
while   {WHILE}
int     {INT}
float   {FLOAT}
fun     {FUN}
main    {MAIN}
val     {VAL}
var     {VAR}
'+'     {PLUS}
'-'     {MINUS}
'*'     {MULT}
'/'     {DIV}
'%'     {MOD}
'>'     {G}
">="    {GEQ}
'<'     {L}
"<="    {LEQ}
"=="    {EQUAL}
"!="    {NEQUAL}
"++"    {ICR}
"--"    {DCR}
'='     {ATRIB}
true    {TRUE}
false   {FALSE}
"&&"    {AND}
"||"    {OR}
'!'     {NOT}
readln  {READLN}
print   {PRINT}
':'     {COLON}
boolean {BOOLEAN}

-- ainda falta defenir precedencias

%% 

-- epsilon defenido (penso) como {- empty -}           { [] }
-- defenir as gramaticas

Fun : fun main '('')' '{' Comands '}'   {}
    | {- empty -}                       { [] }

Commands : Command Commands
    |  {- empty -}                      { [] }

Command : Decl
        | Assign
        | Aexp -- nao tenho a certeza
        | Bexp -- nao tenho a certeza
        | If
        | While
        | Print
        | Readln

Print : print '(' Aexp ')'
    | print '(' Bexp ')'
    | print '(' string ')'

If : if '(' Bexp ')' '{' Comands '}'                        { ... }
   | if '(' Bexp ')' '{' Comands '}' else '{' Comands '}'   { ... }

While : while '(' Bexp ')' '{' Comands '}' { ... }

Type : int                  { ... }
    | float                 { ... }
    | boolean               { ... }
    | string

Decl : var id '=' Aexp              { ... }  -- var x = 5
    | var id '=' Bexp               { ... }  -- var x = true
    | var id ':' Type '=' Aexp      { ... }  -- var x: Int = 5
    | var id ':' Type '=' Bexp      { ... }  -- var x: Boolean = true
    | val id '=' Aexp               { ... }  -- val y = 10
    | val id '=' Bexp               { ... }  -- val y = false
    | val id ':' Type '=' Aexp      { ... }  -- val y: Int = 10
    | val id ':' Type '=' Bexp      { ... }  -- val y: Boolean = false

Assign : id '=' Aexp
    | id '=' Bexp

Aexp : num
    | real
    | id
    | Aexp '+' Aexp
    | Aexp '-' Aexp
    | Aexp '/' Aexp
    | Aexp '*' Aexp
    | Aexp '%' Aexp

Bexp : true
    | false
    | id
    | Bexp "&&" Bexp
    | Bexp "||" Bexp
    | Bexp '>' Bexp
    | Bexp ">=" Bexp
    | Bexp '<' Bexp
    | Bexp "<=" Bexp
    | Bexp "==" Bexp
    | Bexp "!=" Bexp
    | '!' Bexp
