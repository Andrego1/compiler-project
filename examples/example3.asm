.text

.globl main

main:

li $t0, 1

move $t5, $t0

move $a0, $t5

li $v0, 1

syscall

li $t2, 0

move $t5, $t2

move $a0, $t5

li $v0, 1

syscall

move $t5, $t0

bne $t5, $0, L3

j L1

L3:

move $t5, $t2

bne $t5, $0, L0

j L1

L0:

li $t1, 1

j L2

L1:

li $t1, 0

L2:

move $t5, $t1

move $a0, $t5

li $v0, 1

syscall

move $t5, $t2

bne $t5, $0, L4

j L7

L7:

move $t5, $t0

bne $t5, $0, L4

j L5

L4:

li $t4, 1

j L6

L5:

li $t4, 0

L6:

move $t5, $t4

move $a0, $t5

li $v0, 1

syscall

move $t5, $t2

bne $t5, $0, L9

j L8

L8:

li $t3, 1

j L10

L9:

li $t3, 0

L10:

move $t5, $t3

move $a0, $t5

li $v0, 1

syscall

end:

li $v0, 10

syscall