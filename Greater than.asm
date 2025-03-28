.model small
.data
msg1 db 10,13,'Greater than 5 $' 
msg2 db 10,13,'Less than 5$'
msg3 db 10,13,'Equal to 5$'
.code
main proc
     
     
  mov ax,@data
  mov ds,ax
  
  mov ah,1
  int 21h
  mov bl,al
  
  cmp bl,53
  
  je l1
  
  jg l2
  
  jmp l3
  
  l1:
  mov ah,9
  mov dx, offset msg3 
  int 21h
  jmp exit
  
  l2:
  mov ah,9
  mov dx, offset msg1 
  int 21h
  jmp exit
  
  l3:
  mov ah,9
  mov dx, offset msg2 
  int 21h
  jmp exit
     
     
     
     
     
     
     
     
     
     
     
     
     
    exit:
    mov ah,4ch ;Termination of the code
    int 21h
   main endp
end main
    