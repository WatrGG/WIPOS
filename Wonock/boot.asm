[org 0x7c00]

mov bp, 0x1000
mov sp, bp
mov bx, MSG 
call PRINT

jmp $

%include "print.asm"
%include "disk.asm" 

MSG db 'Hello World', 0

BOOTSECT:
    times 510-($-$$) db 0 
    dw 0xAA55