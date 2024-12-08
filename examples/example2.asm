.text

.globl main

main:

li $t5, 1

li $t6, 2

add $t0, $t5, $t6

li $t5, 1

li $t6, 3

mul $t1, $t5, $t6

li $t5, 10

li $t6, 2

div $t2, $t5, $t6

li $t5, 10

li $t6, 5

sub $t3, $t5, $t6

li $t5, 10

li $t6, 2

rem $t4, $t5, $t6

move $t5, $t0

move $a0, $t5

li $v0, 1

syscall

move $t5, $t1

move $a0, $t5

li $v0, 1

syscall

move $t5, $t2

move $a0, $t5

li $v0, 1

syscall

move $t5, $t3

move $a0, $t5

li $v0, 1

syscall

move $t5, $t4

move $a0, $t5

li $v0, 1

syscall

end:

li $v0, 10

syscall