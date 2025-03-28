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
    mov ah,2
    mov dl,10 ;newline
    int 21h
    mov dl,13 ;cret
    int 21h
    mov ah,0 ;ah must be zero otherwise it will incorrect
    mov al,bl ;The value in bl is moved to al, as it will use in the division.
    div cl  ;division will be al=al/cl
    add al,48 ;move numeric to ascii code
    mov dl,al
    mov ah,2  ;for printing
    int 21h   
    exit:
    mov ah,4ch ;Termination of the code
    int 21h
   main endp
end main
    