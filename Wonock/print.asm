PRINT:
    pusha 
    



PRINT_LOOP:
    mov al, [bx]
    cmp al, 0
    je PRINT_EXIT 

    mov ah, 0x0e
    int 0x10
    add bx, 1
    jmp PRINT_LOOP





PRINT_EXIT:
    popa
    ret