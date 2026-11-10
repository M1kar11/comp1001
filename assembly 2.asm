.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD
includelib kernel32.lib

.data
power     DWORD 2200
volt      DWORD 220
quotient  DWORD ?
remainder DWORD ?

.code
main PROC
    mov eax, power      ; numerator in EAX
    xor edx, edx        ; clear EDX so dividend = EDX:EAX
    mov ecx, volt       ; divisor in ECX
    div ecx             ; unsigned divide: EAX = quotient, EDX = remainder
    mov quotient, eax
    mov remainder, edx
    invoke ExitProcess, 0
main ENDP

END main