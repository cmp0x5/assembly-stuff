global _start

section .text
_start:
	mov eax, 0x04
	mov ebx, 0x01
	mov ecx, msg
	mov edx, msgLen
	int 0x80

	mov eax, 0x01
	mov ebx, 0x00
	int 0x80


section .rodata
	msg: db "helloworld!", 0x0A
	msgLen equ $-msg ; $=address of curr instruct


