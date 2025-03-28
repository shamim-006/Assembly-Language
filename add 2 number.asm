.model small
.data
.code
main proc
    mov bl,1
    mov bh,2
            
    add bl,bh 
         
    mov ah,2
    mov dl,bl
    add dl,48 
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main