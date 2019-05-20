org 100h        

include "emu8086.inc"

MOV     DX, OFFSET MAIN
MOV     AH, 9
INT     21H

MOV     DX, OFFSET MESSAGE
MOV     AH, 9
INT     21H
CALL    scan_num
MOV     AX, CX

CALL    pthis
        db 13,10, "THE CUBE IS = ", 0
CALL    CUBE
MUL     CX
CALL    PRINT_NUM

ret

B DW 0
MAIN db "CALCULATES THE CUBE USING PROCEDURES. $"                      
MESSAGE db 13,10, "THE NUMBER TO CUBE: $"

DEFINE_PTHIS
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS        
        
CUBE PROC
    MUL AX   
    RET
    ENDP

END
