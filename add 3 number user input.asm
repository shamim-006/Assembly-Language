.model small
.data
.code
main proc
    
    
     mov ah,1
     int 21h
     mov bl,al
     
    mov ah,1
     int 21h
     mov bh,al
     
     
     mov ah,1
     int 21h
     mov cl,al
     
     
     add bl,bh
     
     sub bl,48
     
     add bl,cl
     
     mov ah,2
     mov dl,bl
     
     sub dl,48
     int 21h    
    
    
    
    
    
    
      exit:
    mov ah,4ch
    int 21h
    main endp
end main



