.text

.globl main

main:

li $v0, 5

syscall

move $t0, $v0

move $t1, $t0

move $a0, $t1

li $v0, 1

syscall

end:

li $v0, 10

syscall