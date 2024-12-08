.text

.globl main

main:

li $t4, 2

li $t5, 2

add $t0, $t4, $t5

li $t1, 3

li $t2, 1

li $t3, 1

move $t4, $t3

li $t5, 2

add $t3, $t4, $t5

move $t4, $t3

move $a0, $t4

li $v0, 1

syscall

end:

li $v0, 10

syscall