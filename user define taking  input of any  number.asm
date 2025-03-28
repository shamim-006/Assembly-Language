.model small
.data
a db 'Enter a number = $'
b db 'The number is = $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9   ;print the enter the number message
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h    ;Taking input a number
    mov bl,al
    
    
    mov ah,2
    mov dl,10
    int 21h      ;newLine
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b       ;The name is =
    int 21h
    
    mov ah,2
    mov dl,bl   ;print the number
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main