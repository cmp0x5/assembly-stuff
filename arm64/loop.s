.data

hello:
    .ascii "reading\n"
helloLen = . - hello

.text

.globl _start

_start:
	mov x0, #1
	mov x1, hello
	mov x2, helloLen
	mov w8, #64
	svc #0

    b read

sai:
    mov x0, #0
    mov w8, #93
    svc #0

read: 
	ldr w2, =0xDEADBEEF
	mov w1, #1
	mov w3, #50
	b loop

loop:
	cmp w1, w3
	bl less
	bge end

less:
	mov w4, #1
	add w1, w1, w4
	b loop

end:
    b sai

