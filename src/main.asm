# MIPS Assembly Program to Add Two Numbers
.data
num1: .word 5        # First number
num2: .word 10       # Second number
result: .word 0      # Result placeholder

.text
.globl main
main:
    lw $t0, num1        # Load num1 into $t0
    lw $t1, num2        # Load num2 into $t1
    add $t2, $t0, $t1   # Add $t0 and $t1, result in $t2
    sw $t2, result      # Store result back to memory

    li $v0, 10          # Exit program
    syscall             # Perform system call to terminate
