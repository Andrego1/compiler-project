# Projeto de Compiladores
--------------------------

## Correcoes a fazer:
    - DONE - Ter o unary_minus para permitir -(1+2)+2 e deixar de permitir numeros negativos na expressão regular, unary_minus TOKEN

    - DONE - No If_then_else deixar de ter a partir do then e ter um nao-terminal no qual temos uma parte com {} ou sem 

    - Na String que n é necessario podemos remover a funcao auxiliar e apenas fazer um println para permitir \n e usear apenas no print
    (ter muitas coisas complica o que temos de fazer em parte2) VER APENAS DEPPOIS DE TUDO, DEPOIS PODIAMOS FAZER

## 2º Parte
    - análise semantica (verificação de tipos, symbol table, ...)
    **apenas verificar se está tudo bem**

    - geração de código intermédio (funções estão defenidas em aula 10)
    **ver melhor a questão das condições e operadores boleanos e TESTAR**

    - geração de código mips (aulas 11 e 12)

    - **NOTA** as variaveis apenas serão declaradas globalmente, não existem abito local

    - *EM GERAL AINDA NAO TRATEI DO READLN e PRINT, vamos deixar para o fim pois tenho duvidas e ver melhor o PRINT