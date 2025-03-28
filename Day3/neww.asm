.model small
.stack 100h

;data segment
.data
    msg1 db "Enter the Num01: $"
    msg2 db "Enter the Num02: $"
    msg3 db "Total of Num01 and Num02: $"
    n1 db 0 ; n1 is the user input
    n2 db 0
    n3 db 0

;code segment
.code
start:
    mov ax, @data     
    mov ds, ax 
    
    ; printing function msg1
    mov dx, offset msg1
    mov ah, 09h
    int 21h
    
    ; read Num01
    mov ah, 01h ;3  al=48+3
    int 21h 
	
	mov dl,al; al=51 dl=51
    sub dl, 48        
    mov n1,dl; n1=3

	mov dl,10; next line
	mov ah,02h
	int 21h
    
    ; printing function msg2
    mov dx, offset msg2
    mov ah, 09h
    int 21h
    
    ; read Num02
    mov ah, 01h 
    int 21h  

	mov dl,al; 4
    sub dl, 48        
    mov n2, dl  

	mov dl,10; next line
	mov ah,02h
	int 21h	
	
	;ms3
	mov dx, offset msg3
    mov ah, 09h
    int 21h
    
    ; add Num01 and Num02
    mov dl, n1     
    add dl, n2        

    ; convert the sum back to ASCII
    add dl, 48      
    
    ; print the result
    mov ah, 02h   
    int 21h
    
    ; Terminate the program
    mov ax, 4c00h
    int 21h

end start
