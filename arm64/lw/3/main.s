# load-store architecture
# only load and store instructions can access memory
# x86 -> lots of instructions can access memory
# ldr -> pull data from memory
# str -> store data in memory after manipulation
# str puts value into memory pointed by dest register

.global _start

.text
_start:
    ldr x0, =var1 # x0 holds memory address of var
    ldr x1, [x0] # x1 holds var

    mov x2, #0x3
    ldr x3, =var2
    str x2, [x3]

.data
var1: .word 5
var2: .word 6
