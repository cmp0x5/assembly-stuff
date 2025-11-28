# cpsr - current program status register, roughly equiv to EFLAGS
# s suffix on instruction sets cpsr
.global _start 

.section .data
buf: .space 2

.section .text 

_start:
    mov x0, #0x3
    mov x1, #0x3
    subs x2, x0, x1
