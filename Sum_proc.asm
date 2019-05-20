org 100h
include "emu8086.inc"
                                               
MOV     DX, OFFSET MAIN
MOV     AH,9
INT     21H

LEA     SI, QUESTION
CALL    print_string
CALL    scan_num
MOV     AX,CX

CALL    pthis
        db 13,10, "The Square is ",0
CALL    Square
CALL    print_num
mov ax,4
call    print_num             

ret                                      
MAIN db "Computing the Square using Procedures. $"
QUESTION db 13,10, 'Number to Square: ',0

define_print_num
define_print_num_uns
define_pthis
define_Scan_num
define_print_String

ret

Square PROC
    mul ax
    ret
Square EndP        

END
