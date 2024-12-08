.text

.globl main

main:

li $t1, 0

li $t2, 1

li $t3, 2

bgt $t2, $t3, L0

j L1

L0:

li $t0, 1

j L2

L1:

li $t0, 0

L2:

move $t2, $t0

bne $t2, $0, L3

j L4

L3:

move $t2, $t1

li $t3, 1

add $t1, $t2, $t3

j L5

L4:

move $t2, $t1

li $t3, 1

sub $t1, $t2, $t3

L5:

move $t2, $t1

move $a0, $t2

li $v0, 1

syscall

end:

li $v0, 10

syscall
