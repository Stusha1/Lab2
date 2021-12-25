%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    xor edx, edx
    LEA  ESI, [a]
    MOV  ECX, 8
    
next:
    MOV    AL, [ESI]
    CMP    AL, 0
    JNL     summ
    
next1:    
    inc     ESI    
    Loop    next
    jmp     exit
summ: 
    INC    DL   
    jmp    next1  
 
    
    
    
    
    
exit:    
    PRINT_UDEC 1,DL
    ret
    
    
    
    
    
    
   
section .data

a: db 2,-7, 12, 5, -1, 0, -4, 1