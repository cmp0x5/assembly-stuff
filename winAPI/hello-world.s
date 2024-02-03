	global _main
	extern _GetStdHandle@4
	extern _WriteFile@20
	extern _ExitProcess@4

	section .text
_main:
	mov ebp, esp					;base pointer
	sub esp, 4						;allocate a dword on stack for local vars
	
	;hStdOut=GetStdHandle(STD_OUTPUT_HANDLE);
	push -11 						;push STD_OUTPUT_HANDLE parameter for GetStdHandle onto stack
	call _GetStdHandle@4 			;handle for stdout
	mov ebx, eax 					;store handle in ebx
	
	;WriteFile( hStdOut, message, length(message), &bytes, 0);
	lea eax, [ebp-4] 				;store effective address of local var into eax
	push eax						;push buffer
	push (message_end - message)	;push message length in bytes
	push message					;push address of message string
	push ebx						;push handle to standard output
	call _WriteFile@20				
	
	; ExitProcess(0)
	push 0							
	call _ExitProcess@4					
message:
	db "Hello World =DD", 0xA
message_end: