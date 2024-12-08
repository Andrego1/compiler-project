# Projeto de Compiladores
--------------------------

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