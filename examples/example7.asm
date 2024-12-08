.text

.globl main

main:

li $t0, 1

move $t2, $t0

li $t3, 1

add $t1, $t2, $t3

li $t2, 3

beq $t1, $t2, L0

j L1

L0:

j end

j L2

L1:

move $t1, $t0

li $t2, 1

add $t0, $t1, $t2

L2:

move $t1, $t0

move $a0, $t1

li $v0, 1

syscall

end:

li $v0, 10

syscall