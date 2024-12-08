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

- geração de código mips (aulas 11 e 12)
**nao gera corretamente para condições ver exemple3.kt ou example5.kt com mips gerado no MARS** ACHO QUE TEMOS DE POR ASSEGUIR UM JUMP PARA O FALSE.
Temos de lidar com o PRINTI E PRINTR E READLNI E READLNR



- **NOTA** as variaveis apenas serão declaradas globalmente, não existem abito local
    
- **DONE** - o RETURN deverá simplesmnete fazer jump para o fim do codigo

- é necessario syscall quando acaba e para ler/print
ver https://www.dcc.fc.up.pt/~ricroc/aulas/2324/ac/ o mips programing
ou então a aula 12 de compildaores



## README.pdf mudanças
- Referir updates da 1º parte, que removemos a utilização de Strings e que tratamos do unary minus e melhoramos a gramatica para Comando if...

- 1.2 ....para um código intermédio usando Código Intermédio de 3 endereços (TAC)
E utilizar sempre TAC ao referir código intermédio de 3 endereços

- Remover 2.1, 2.2 (podes dizer que foram tratados na 1º parte)

- Em 2.3 não utilizamos o escopo (âmbito é global)

- Em 2.4 remover 2º ponto, no 3º referir reutilização de temporários

- Remover Relação entre os Módulos (já foi referido nos pontos anteriores)

- Remover tudo para frente exceto conlusão

- Acrescentar o que o Main faz e como pode ser utilizado