org 0x100 
jmp start 

arr: dw 1,2,3,4,5,6,7,8,9,10
max: dw 0
min: dw 0
result: dw 0

start:

  mov  ax,0
  mov bx,0
  mov cx,5
  mov dx,0
l1:

  mov ax,[arr+bx]
  cmp ax,dx
ja max_l1

  add bx,2
  sub cx,1

jnz l1
jmp min_l1

max_l1:
  mov dx,ax
  add bx,2
  sub cx,1
jnz l1

min_l1:
  mov [max],dx
  mov cx,4
  mov dx,0
  mov si,2

l2:
  mov ax,[arr+bx]
  mov dx,[arr+10+si]
  cmp ax,dx
jb min_num
  mov ax,dx
  mov bx,si

min_num:
  mov [min],ax
  add si,2
  sub cx,1
jnz l2


res:
  mov dx,[min]
  add dx,[max]
  mov [result],dx
mov ax,0x4c00  
int 0x21
