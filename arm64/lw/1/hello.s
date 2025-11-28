#global makes _start label visible outside the program for the linker
#_start label names a certain location in memory
.global _start 

.section .text 

_start:
    mov x8, #0x5d
    mov x0, #0x01
    svc 0
    
