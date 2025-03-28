.model small
.data
var1 db 49
msg1 db 'Enter the 1st number = $'
msg2 db 10,13, 'Enter the 2nd number = $'  
msg3 db 'Small number is  = $'
.code
main proc
    mov ax,@data
    mov ds,ax     ;initialize the code
    
    mov dx,offset msg1
    mov ah,9
    int 21h
    mov ah,1;input of 1st number
    int 21h 
    mov bl,al
    
    mov dx,offset msg2
    mov ah,9
    int 21h
    mov ah,1;input of 2nd number
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10 ;newline
    int 21h
    mov dl,13 ;cret
    int 21h

    mov ah,2
    int 21h
    cmp bl,bh
    jl l1  ;jump if less than
    mov ah,9
    int 21h
    mov dl,bh
    mov ah,2 ;if not less
    int 21h
    jmp exit
    
    l1:
    mov dx,offset msg2
    mov ah,9
    int 21h
    mov dl,bl
    mov ah,2 ;if less 
    int 21h
     
    exit:
    mov ah,4ch ;Termination of the code
    int 21h
   main endp
end main
    