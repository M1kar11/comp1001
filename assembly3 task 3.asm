; A simple example adding two numbers.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype



.data ; data segment

; define your variables here

array DWORD 5,10,15,20;

; 

.code ; code segment

main PROC ; main procedure

; 
mov ecx, 8;
mov esi, 0;
update: ;
mov eax, [array + TYPE array * esi];
mul ecx;
mov [array + TYPE array * esi], eax;
inc esi;
cmp esi, 4;
jne update; 
    INVOKE ExitProcess, 0 ; call exit function

main ENDP ; exit main procedure
END main  ; stop assembling 