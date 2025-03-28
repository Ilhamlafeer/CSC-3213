;Write an assembly language program to add two numbers and display the result
.model small
.stack 100h

.data
;numbers to be added
num1 db 5
num2 db 3

.code
start:

mov ax,@data
mov ds,ax

mov dl,num1 ;dl=5
add dl,num2 ;dl=num1+num2=5+3=8
add dl,48 ;dl=48+8=56

mov ah,02h ; 02h for integer, for string 09h
int 21h

mov ax,4c00h
int 21h

end start
