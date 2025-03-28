.model small
.data
.code
main proc
    mov ah,1;input of 1st number
    int 21h
    mov bl,al
    sub bl,48;it will be number
    mov ah,1 ; input of  2nd number
    int 21h
    mov cl,al
    sub cl,48 ;it will be number
    sub bl,cl ;subtract 1st abd 2nd number 
    
    mov ah,1 ; input of  3rd number
    int 21h 
    mov bh,al
    sub bh,48 ;it will be number
    sub bl,bh ;substract subtraction(1st&2nd)and 3rd number
    add bl,48 ;move numeric to ascii code
    mov ah,2
    mov dl,10 ;newline
    int 21h
    mov dl,13 ;cret
    int 21h
    mov ah,2  ;for printing
    mov dl,bl
    int 21h   
    exit:
    mov ah,4ch ;Termination of the code
    int 21h
   main endp
end main
    