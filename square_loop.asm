org 100h

include "emu8086.inc"
print 'Enter the number: '
call scan_num
mov bx, cx
mov ax,0
jmp l1
l1:
add ax, bx
dec cx
jcxz l2
jmp l1

l2:
printn ''
print 'The square is: '
call print_num

define_print_num
define_scan_num
define_print_num_uns
