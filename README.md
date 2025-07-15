# Projeto de Compiladores CC3001
--------------------------
Um compilador para um subconjunto pequeno da linguagem Kotlin.
Usamos o Alex para análise léxica, ficheiro `Lexer.x` e Happy para análise sintática, ficheiro `Parser.y`.
O ficheiro `README_parte1.pdf` tem uma melhor descrição da 1ºparte do projeto que foi a utilização dos geradores acima.
Na 2ºparte criamos o `Semantics.hs` para análise semântica, o `CodeGen.hs` para a geração de código intermédio, o `MipsGen.hs` cria o código MIPS apartir das instruções intermédias. 
O `Main.hs` é o ficheiro que permite correr tudo e visulizar cada etapa.

Podemos correr da seguinte forma: 
- `./Main < examples/example1.kt`
Imprime no terminal todas as fazes e codigo MIPS deverá ser igual a example1.asm
( `README_parte2.pdf` tem mais coisas mas tem como correr mal..... )

--------------------------


# Isto são notas durante o desenvolvimento

## Correcoes a fazer 1º Parte:
- **DONE** - Ter o unary_minus para permitir -(1+2)+2 e deixar de permitir numeros negativos na expressão regular, unary_minus TOKEN

- **DONE** - No If_then_else deixar de ter a partir do then e ter um nao-terminal no qual temos uma parte com {} ou sem 

- **NAO IMPLEMENTAR** - Na String que n é necessario podemos remover a funcao auxiliar e apenas fazer um println para permitir \n e usear apenas no print
(ter muitas coisas complica o que temos de fazer em parte2) VER APENAS DEPPOIS DE TUDO, DEPOIS PODEREMOS FAZER

-----------------------------

## 2º Parte
- **DONE** análise semantica (verificação de tipos, symbol table, ...)
    **apenas VERIFCAR se está tudo bem**

- **DONE** - geração de código intermédio (funções estão defenidas em aula 10)

- **DONE** - geração de código mips (aulas 11 e 12)
**DONE** - **nao gera corretamente para condições ver exemple3.kt ou example5.kt com mips gerado no MARS** ACHO QUE TEMOS DE POR ASSEGUIR UM JUMP PARA O FALSE.

- **NOTA** as variaveis apenas serão declaradas globalmente, não existem abito local
    
- **DONE** - o RETURN deverá simplesmnete fazer jump para o fim do codigo

- **DONE** - é necessario syscall quando acaba e para ler/print
ver https://www.dcc.fc.up.pt/~ricroc/aulas/2324/ac/ o mips programing
ou então a aula 12 de compildaores


- REMOVEMOS O FLOATTYPE