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
str  {STR $$}

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
string    {STRING}

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
"+="    {ATRIB_PLUS}
"-="    {ATRIB_MINUS}
"*="    {ATRIB_MULT}
"/="    {ATRIB_DIV}
"%="    {ATRIB_MOD}

true    {TRUE}
false   {FALSE}


readln  {READLN}
print   {PRINT}

':'     {COLON}

%left "||"
%left "&&"
%nonassoc "==" "!="
%nonassoc '>' ">=" '<' "<="
%left '+' '-'
%left '*' '/' '%'
%right '!'
%right "++" "--"

%% 

-- Define o ponto de entrada
Fun : fun main '(' ')' '{' Commands '}'  { $6 } 
         | {- empty -}                   { [] }

Commands : Command Commands              { $1 : $2 } --lista de commands
         | {- empty -}                   { [] }

Command : Decl                          { $1 }
        | Assign                        { $1 }
        | Expr                          { $1 }
        | If                            { $1 }
        | While                         { $1 }
        | Print                         { $1 }

Readln : readln '(' ')'                 { ReadlnNode }

Print : print '(' InitExp ')'           { PrintNode $3 }

If : if '(' Expr  ')' '{' Commands '}'                       { IfNode $3 $6 }
   | if '(' Expr  ')' '{' Commands '}' else '{' Commands '}' { IfElseNode $3 $6 $10 }

While : while '(' Expr ')' '{' Commands '}' { WhileNode $3 $6 }

Type : int                              { IntType }
     | float                            { FloatType }
     | boolean                          { BoolType }
     | string                           { StringType }

-- Inicialização permitidas
InitExp : Expr                          { $1 }  -- Para int e float
        | Sexp                          { $1 }  -- Para string
        | Readln                        { ReadlnNode } -- Leitura da entrada padrão

Decl : var id '=' InitExp               { VarDecl $2 $4 }
     | val id '=' InitExp               { ValDecl $2 $4 }
     | var id ':' Type '=' InitExp      { VarDeclTyped $2 $4 $6 }
     | val id ':' Type '=' InitExp      { ValDeclTyped $2 $4 $6 }

Assign : id '=' Expr                    { AssignNode $1 $3 }      -- Atribuição direta
       | id "+=" Expr                   { AddAssignNode $1 $3 }   -- Atribuição com soma
       | id "-=" Expr                   { SubAssignNode $1 $3 }   -- Atribuição com soma
       | id "*=" Expr                   { MultAssignNode $1 $3 }  -- Atribuição com multiplicação
       | id "/=" Expr                   { DivAssignNode $1 $3 }   -- Atribuição com divisão
       | id "%=" Expr                   { ModAssignNode $1 $3 }   -- Atribuição com módulo

Expr : Expr '+' Expr                    { AddNode $1 $3 }
     | Expr '-' Expr                    { SubNode $1 $3 }
     | Expr '*' Expr                    { MultNode $1 $3 }
     | Expr '/' Expr                    { DivNode $1 $3 }
     | Expr '%' Expr                    { ModNode $1 $3 }
     | PostIncDecExp                    { $1 }
     | Expr "&&" Expr                   { AndNode $1 $3 }
     | Expr "||" Expr                   { OrNode $1 $3 }
     | Expr '>' Expr                    { GtNode $1 $3 }
     | Expr ">=" Expr                   { GeNode $1 $3 }
     | Expr '<' Expr                    { LtNode $1 $3 }
     | Expr "<=" Expr                   { LeNode $1 $3 }
     | Expr "==" Expr                   { EqNode $1 $3 }
     | Expr "!=" Expr                   { NeNode $1 $3 }
     | '!' Expr                         { NotNode $2 }
     | '(' Expr ')'                     { $2 }
     | Atomic                           { $1 }

-- NOTAS:
-- poso tentar fazer com um duplicado de BoolExpr para que seja apenas usado em if e while
-- no exemplo b += true em que b é um int posso resolver agora ou deixar passar e dizer que é um erro de tipo
-- devo fazer ; ? e se devo fazer 
-- melhorar a AST !!!
-- melhorar if ?? um if com {} e um sem, este ultimo apenas um comando


-- Booleanos: operadores lógicos e de comparação
--BoolExpr : AtomicBool "&&" AtomicBool        { AndNode $1 $3 }
--         | AtomicBool "||" AtomicBool        { OrNode $1 $3 }
--         | Aexp '>' Aexp                 { GtNode $1 $3 }
--         | Aexp ">=" Aexp                { GeNode $1 $3 }
--         | Aexp '<' Aexp                 { LtNode $1 $3 }
--         | Aexp "<=" Aexp                { LeNode $1 $3 }
--         | Aexp "==" Aexp                { EqNode $1 $3 }
--         | Aexp "!=" Aexp                { NeNode $1 $3 }
--         | '!' BoolExpr                  { NotNode $2 }
--         | AtomicBool                 { $1 }        -- Usa `AtomicBoolExp` para booleanos simples

-- Operações aritméticas
--Aexp : --num                              { NumNode $1 }
--      Aexp '+' Aexp                     { AddNode $1 $3 }
--     | Aexp '-' Aexp                     { SubNode $1 $3 }
--     | Aexp '*' Aexp                     { MultNode $1 $3 }
--     | Aexp '/' Aexp                     { DivNode $1 $3 }
--     | Aexp '%' Aexp                     { ModNode $1 $3 }
--     | PostIncDecExp                     { $1 }
--     | AtomicAexp                        { $1 }

-- Pós-incremento e pós-decremento
PostIncDecExp : id "++"                 { IncrNode (IdNode $1) }
              | id "--"                 { DecrNode (IdNode $1) }

-- Expressão booleana simples (literais booleanos e identificadores)
--AtomicBool : true                     { BoolNode True }
--              | false                    { BoolNode False }
--              | id                       { IdNode $1 }
--              | '(' BoolExpr ')'         { $2 }

-- Expressão aritmética simples (números e identificadores)
--AtomicAexp : num                         { NumNode $1 }
--           | id                          { IdNode $1 }
--           | '(' Aexp ')'                { $2 }

Atomic : id                             {IdNode $1}
       | num                            {NumNode $1}
       | real                           {RealNode $1}
       | true                           {BoolNode True}
       | false                          {BoolNode False}

Sexp : str                              { StringNode $1 }

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
         | AddAssignNode String Exp     -- Representa `+=`
         | SubAssignNode String Exp     -- Representa `-=`
         | MultAssignNode String Exp    -- Representa `*=`
         | DivAssignNode String Exp     -- Representa `/=`
         | ModAssignNode String Exp     -- Representa `%=`
         deriving (Show, Eq)

data Type = IntType | FloatType | BoolType | StringType deriving (Show, Eq)

parseError :: [Token] -> a
parseError toks = error $ "Erro de parsing" ++ show toks
}

