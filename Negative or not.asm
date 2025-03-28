.model small
.data
msg db 'Non-negative$ ' 
msg2 db 'Negative$'
.code
main proc
     
     
  mov ax,@data
  mov ds,ax
  
  mov bl,-5
  
  cmp bl,0
  jge l1
  jmp l2
  
  l1:
  mov ah,9
  mov dx,offset msg
  int 21h
  jmp exit
     
     
  l2:
  mov ah,9
  mov dx,offset msg2
  int 21h
  jmp exit    
     
     
     
     
     
     
     
     
     
     
     
     
     
    exit:
    mov ah,4ch ;Termination of the code
    int 21h
   main endp
end main
    