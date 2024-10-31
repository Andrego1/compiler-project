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
'>='    {GEQ}
'<'     {L}
'<='    {LEQ}
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

-- ainda falta defenir precedencias

%% 

-- defenir as gramaticas
