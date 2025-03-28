
.model small
.data
a db 10,13, '***** $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,5
    f:
    mov ah,2
    lea dx,a
    mov ah,9
    int 21h
    
    loop f:
    
    

          exit:
    mov ah,4ch
    int 21h
    main endp
end main



