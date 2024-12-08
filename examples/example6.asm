.text

.globl main

main:

li $t2, 1

move $t4, $t2

bne $t4, $0, L0

j L1

L0:

li $t2, 0

j L2

L1:

li $t2, 1

L2:

li $t0, 0

li $t3, 1

move $t4, $t0

li $t5, 10

bgt $t4, $t5, L3

j L4

L3:

li $t3, 0

j L5

L4:

li $t3, 1

L5:

li $t1, 2

move $t4, $t1

li $t5, 0

bge $t4, $t5, L6

j L7

L6:

move $t4, $t1

li $t5, 1

add $t1, $t4, $t5

j L8

L7:

move $t4, $t1

move $a0, $t4

li $v0, 1

syscall

L8:

move $t4, $t3

move $a0, $t4

li $v0, 1

syscall

end:

li $v0, 10

syscall