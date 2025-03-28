.model small
.data
msg db 'Hello world$' ;$symbol mark the end of a string
.code
main proc
    mov ax,@data
    mov ds,ax;Intialize it 
    mov dx,offset msg
    mov ah,9 ;for printing string
    int 21h  
    exit:
    mov ah,4ch ;Termination of the code
    int 21h
   main endp
end main
    