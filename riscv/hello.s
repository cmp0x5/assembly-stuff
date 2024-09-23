.section .data
hello: .asciz "Hello, RISCV!\n"


.section .text
.globl _start
_start:
	li a0, 1
	la a1, hello
	li a2, 14
	li a7, 64 # write
	ecall

	li a7, 93 # exit
	li a0, 0
	ecall

