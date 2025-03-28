.model small
.data
;msg db 'Bangladesh is a country$ '
.code
main proc
     
     
     
     mov ah,1
     int 21h
     mov bl,al
     
     mov ah,1
     int 21h
     mov bh,al
     
     cmp bl,bh
     jl l1
     
     jmp l2
     
     l1:
     mov ah,2
     mov dl,bh
     int 21h
     jmp exit
     
     l2:
     mov ah,2
     mov dl,bl
     int 21h
     jmp exit
     
     
     
     
     
     
     
     
     
     
     
     
     
     
    exit:
    mov ah,4ch ;Termination of the code
    int 21h
   main endp
end main
    