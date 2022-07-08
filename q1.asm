[org 0x0100]
jmp start

data: dw 3, 9, 56, 43, 1, 2, 23
Even: dw 0
Odd: dw 0

findEven:
  mov bx,2
  mov si,0
  mov cx,16
l1:
  mov ax, [data+si]
  div bx
  add si,2
  sub cx,2
  cmp dx,0
jne l1 
    add word[Even],1
    sub cx,2
jnz l1
    ret 

findOdd:
  mov bx,2
  mov si,0
  mov cx,24
l2:
  mov ax, [data+si]
  div bx
  add si,2
  sub cx,2
  cmp dx,0
je l2
  add word[Odd],1
  sub cx,2
jnz l2
   
   ret 

start:
  call findEven
  call findOdd
mov ax,0x4c00
int 0x21
