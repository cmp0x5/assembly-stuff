section .text:
	global _start

_start:
	;align 16
	mov rax, 0x01
	mov rdi, 0x01
	mov rsi, msg
	mov rdx, msgLen
	syscall

	mov rax, 0x3c
	mov rdi, 0x00
	syscall



section .data:
	msg: db "helloworld", 0xA
	msgLen equ $ - msg
