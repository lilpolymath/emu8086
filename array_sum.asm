org 100h

include 'emu8086.inc'
mov cx, 4
mov bx, 0
mov dx, 0
jmp l1

l1:
mov ax, [array1+bx]
add ax, [array2+bx]
add ax, [array3+bx]
dec cx
jcxz l2
print "Result of this Column : "
call print_num
printn ''

add bx,2
jmp l1 

l2:
printn  'END'
ret

array1 dw 1,2,3
array2 dw 1,2,3
array3 dw 1,2,3

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
