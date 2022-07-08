org 0x100
jmp start

arr:dw 1,2,3,2,5

start:
   xor ax,ax
   mov si,0
   mov cx,5
   mov bx,0
l1:
   mov ax,[arr+bx+2]
   add si,2
   mov dx,[arr+si]
cmp ax,dx
je same
sub cx,1
jnz l1

same:
  mov dx,ax


mov ax,0x4c00
int 0x21

