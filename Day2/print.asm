; add 2 numbers and display the results
.model small
.stack 100h

.data
msg1 db "Number01: $"
msg2 db "Number02: $"
msg3 db "Addition of num1 and num2: $"
num1 db 2
num2 db 3

.code
start:

mov ax, @data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

mov dl,num1
add dl,48
mov ah,02h
int 21h

;to make a next line
mov dl,10
mov ah,02h ; integer function
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov dl,num2
add dl,48
mov ah,02h
int 21h

;to make a next line
mov dl,10
mov ah,02h ; integer function
int 21h

mov dx,offset msg3
mov ah,09h
int 21h

mov dl,num1 ;dl=2
add dl,num2 ;dl=num1+num2=2+3=5
add dl,48 ;dl=48+5=53

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start