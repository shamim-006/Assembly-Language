.model small
.data
.code
main proc
    mov cx,10;Assign 10 in cx,it is used for counter
    mov bl,0
    
    number:
    mov dl,bl;bl is used for priting 
    add dl,48;numeric to ascii
    mov ah,2
    int 21h
    inc bl ;Increment bl
    loop number ;jumps back to the number  if cx is not zero
     
    exit:
    mov ah,4ch ;Termination of the code
    int 21h
   main endp
end main
    