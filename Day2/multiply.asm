;Multiplication
.model small
.stack 100h

.data
num1 db 2
num2 db 3

.code
start:

mov ax, @data
mov ds, ax

mov al, num1 ; al for multipliocation, dl  for addition
mul num2 ; no need to put al again
mov dl, al ; we have to find ascii. So, move al into dl
add dl,48 

mov ah,02h
int 21h

mov ax, 4c00h
int 21h

end start