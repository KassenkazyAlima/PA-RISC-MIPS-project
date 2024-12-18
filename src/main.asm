# MIPS Assembly Program to Add Two Numbers
# Description: This program loads two numbers from memory, adds them, and stores the result back in memory.

.data
num1:   .word 5          # First number to be added (5)
num2:   .word 10         # Second number to be added (10)
result: .word 0          # Memory space to store the result

.text
.globl main              # Global declaration of the main function

main:
    # Step 1: Load 'num1' into register $t0
    lw $t0, num1         # Load the word at label 'num1' into $t0
    # Explanation: $t0 = Memory[num1]

    # Step 2: Load 'num2' into register $t1
    lw $t1, num2         # Load the word at label 'num2' into $t1
    # Explanation: $t1 = Memory[num2]

    # Step 3: Add the values in $t0 and $t1, store the result in $t2
    add $t2, $t0, $t1    # $t2 = $t0 + $t1
    # Explanation: Add the contents of $t0 and $t1 and store the result in $t2

    # Step 4: Store the result from $t2 back into memory at 'result'
    sw $t2, result       # Store the word in $t2 into the memory location 'result'
    # Explanation: Memory[result] = $t2

    # Step 5: Exit program
    li $v0, 10           # Load the immediate val
