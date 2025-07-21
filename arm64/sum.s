.text

.globl _start
_start:
    b soma

sai:
    mov x0, #0
    mov w8, #93
    svc #0

soma: 
    mov x0, #338
    mov x1, #999
    add x0, x0, x1
    ldr w1, =0x5FFFF0FF
	ldr w2, =0xDEADBEEF
	ldr x3, =0xDEADBEEFDEADBEEF
	add w2, w2, w1
	add w3, w3, w1

    b int_to_ascii

int_to_ascii:
    b sai
