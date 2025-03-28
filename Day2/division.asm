; Division
.model small
.stack 100h

.data
num1 db 7
num2 db 3
remainder db ? ; it is to store remainder

.code
start:

mov ax, @data
mov ds,ax

mov ah,00 ; ah register is used to store remainder value. Initially we want to clear it
mov al, num1
div num2 ; al = num1/num2=2 ah=1
mov remainder,ah ; move ah value to remainder, remainder=1 

mov dl,al ; dl=2
add dl,48
mov ah,02h
int 21h

;to make a next line
mov dl,10
mov ah,02h ; integer function
int 21h

mov dl,remainder ; dl=1
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start
