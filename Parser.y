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
--','     {COMMA}

if      {IF}
else    {ELSE}
while   {WHILE}

int     {INT}
float   {FLOAT}
boolean {BOOLEAN}

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
"&&"    {AND}
"||"    {OR}
'!'     {NOT}

"++"    {ICR}
"--"    {DCR}

'='     {ATRIB}

true    {TRUE}
false   {FALSE}


readln  {READLN}
print   {PRINT}

':'     {COLON}

%left "||"
%left "&&"
%nonassoc EQUAL NEQUAL
%nonassoc G GEQ L LEQ
%left '+' '-'
%left '*' '/' '%'
%right NOT
%right ICR DCR

%% 

-- Define o ponto de entrada
Fun : fun main '(' ')' '{' Commands '}' { $6 } 
         | {- empty -}                  { [] }

Commands : Command Commands                 { $1 : $2 } --lista de commands
         | {- empty -}                      { [] }

Command : Decl                                 { $1 }
        | Assign                               { $1 }
        | Aexp                                 { $1 }
        | Bexp                                 { $1 }
        | If                                   { $1 }
        | While                                { $1 }
        | Print                                { $1 }
        | Readln                               { $1 }

Readln : readln '(' ')'        { ReadlnNode }

Print : print '(' Aexp ')'                     { PrintNode $3 }
      | print '(' Bexp ')'                     { PrintNode $3 }
      | print '(' string ')'                   { PrintNode (StringNode $3) } --corrige um erro

If : if '(' Bexp ')' '{' Commands '}'                       { IfNode $3 $6 }
   | if '(' Bexp ')' '{' Commands '}' else '{' Commands '}' { IfElseNode $3 $6 $10 }

While : while '(' Bexp ')' '{' Commands '}'    { WhileNode $3 $6 }

Type : int                  { IntType }
     | float                { FloatType }
     | boolean              { BoolType }
     | string               { StringType }

Decl : var id '=' Aexp                      { VarDecl $2 $4 }
     | var id '=' Bexp                      { VarDecl $2 $4 }
     | var id ':' Type '=' Aexp             { VarDeclTyped $2 $4 $6 }
     | var id ':' Type '=' Bexp             { VarDeclTyped $2 $4 $6 }
     | val id '=' Aexp                      { ValDecl $2 $4 }
     | val id '=' Bexp                      { ValDecl $2 $4 }
     | val id ':' Type '=' Aexp             { ValDeclTyped $2 $4 $6 }
     | val id ':' Type '=' Bexp             { ValDeclTyped $2 $4 $6 }

Assign : id '=' Aexp                         { AssignNode $1 $3 }
       | id '=' Bexp                         { AssignNode $1 $3 }

Aexp : num                                  { NumNode $1 }
     | real                                 { RealNode $1 }
     | id                                   { IdNode $1 }
     | Aexp '+' Aexp                        { AddNode $1 $3 }
     | Aexp '-' Aexp                        { SubNode $1 $3 }
     | Aexp '*' Aexp                        { MultNode $1 $3 }
     | Aexp '/' Aexp                        { DivNode $1 $3 }
     | Aexp '%' Aexp                        { ModNode $1 $3 }
     | Aexp "++"                            { IncrNode $1 }
     | Aexp "--"                            { DecrNode $1 }

Bexp : true                                 { BoolNode True }
     | false                                { BoolNode False }
     | id                                   { IdNode $1 }
     | Bexp "&&" Bexp                       { AndNode $1 $3 }
     | Bexp "||" Bexp                       { OrNode $1 $3 }
     | Aexp '>' Aexp                        { GtNode $1 $3 }
     | Aexp ">=" Aexp                       { GeNode $1 $3 }
     | Aexp '<' Aexp                        { LtNode $1 $3 }
     | Aexp "<=" Aexp                       { LeNode $1 $3 }
     | Aexp "==" Aexp                       { EqNode $1 $3 }
     | Bexp "!=" Bexp                       { NeNode $1 $3 }
     | '!' Bexp                             { NotNode $2 }

{
-- AST Nodes
data Exp = NumNode Int
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
         | VarDecl String Exp
         | VarDeclTyped String Type Exp
         | ValDecl String Exp
         | ValDeclTyped String Type Exp
         | AssignNode String Exp
         deriving (Show, Eq)

data Type = IntType | FloatType | BoolType | StringType deriving (Show, Eq)

parseError :: [Token] -> a
parseError toks = error $ "Erro de parsing" ++ show toks
}

