.text

.globl main

main:
    li $t1, 0           # Carrega 0 em $t1
    li $t2, 1           # Carrega 1 em $t2
    li $t3, 2           # Carrega 2 em $t3
    bgt $t2, $t3, L0    # Se $t2 > $t3, vai para L0
L0:
    li $t0, 1           # Carrega 1 em $t0
    j L2                # Pula para L2
L1:
    li $t0, 0           # Carrega 0 em $t0
L2:
    move $t2, $t0       # Move o valor de $t0 para $t2
    bne $t2, $zero, L3  # Se $t2 != 0, vai para L3
L3:
    move $t2, $t1       # Move o valor de $t1 para $t2
    li $t3, 1           # Carrega 1 em $t3
    add $t1, $t2, $t3   # Soma $t2 + $t3 e armazena o resultado em $t1
    j L5                # Pula para L5
L4:
    move $t2, $t1       # Move o valor de $t1 para $t2
    li $t3, 1           # Carrega 1 em $t3
    sub $t1, $t2, $t3   # Subtrai $t2 - $t3 e armazena o resultado em $t1
L5:
    # Finalizando o programa
    li $v0, 10          # Código de sistema para terminar o programa
    syscall             # Chama o sistema para terminar o programa
end:
    # Não é necessário código após o "end:", pois o syscall já finaliza o programa
