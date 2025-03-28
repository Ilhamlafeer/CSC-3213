.model small
.stack 100h

;data segment
.data
	msg db "Enter the number: $"
	n1 db 0; n1 is the user input

;code segment	
.code
start:
	mov ax, @data; move the address of the data segment ax register 
	mov ds, ax; move the ax register value to data segment register
	
	; printing function
	mov dx, offset msg; dx register is used to print the msg
	mov ah, 09h; printing function. It will interrupt 21h
	int 21h; interrupt 21h and print the msg

	mov ah, 01h; 01h is used to read the input
	int 21h; interupt function
	mov n1, al; al register is used to read the single input(for small model)
	
	mov dl, 0ah; To read the ASCII value. we can also use 10h instead of 0ah
	mov ah, 02h
	int 21h
	
	;printing the value
	mov dl, n1
	mov ah, 02h
	int 21h
	
	; Terminate
	mov ax, 4c00h
	int 21h
end start