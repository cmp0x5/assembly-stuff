global _start

section .text
_start:
	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, msg
	mov rdx, msgLen
	syscall

	mov rax, 0x3C
	xor rdi, rdi
	syscall

section .rodata
	msg: db "helloworld", 0x0A
	msgLen equ $-msg


