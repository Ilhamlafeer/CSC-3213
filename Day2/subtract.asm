;Write an assembly program to do subtraction
.model small
.stack 100h

.data
; numbers to be subtracted (from 0 to 9)
num1 db 5
num2 db 2

.code
start:

mov ax, @data
mov ds, ax

mov dl,num1
sub dl,num2
add dl,48

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start