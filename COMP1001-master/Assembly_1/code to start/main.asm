; A simple example adding two numbers.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	; define your variables here
  sum DWORD 0  ; define a variable sum (32-bit) with initial value 0
  
.code ; code segment

main PROC ; main procedure
	; write your assembly code here
  mov eax, 25 ; move literal value 25 to eax
  mov ebx, 30 ; move literal value 30 to ebx
  mov ecx, 20  ; move literal value 20 to ecx
  mov edx, 15  ; move literal value 15 to edx

  ; ** Addition of two variables into one **

  add eax, ebx ; add 25 + 30 store in eax
  add ecx, edx ; add 20 + 15 store in ecx

  ; ** Subtraction of the two added variables **

  sub eax, ecx ; subtract ecx to eax (eax + ebx) - (ecx + edx)

  ; ** Store answer into variable **
  mov answer, eax ; move the answer into variable answer

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling