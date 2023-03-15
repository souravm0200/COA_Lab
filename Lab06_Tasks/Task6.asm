org 100h

.model small
.stack 100h 
.data
 msg db 'THE SUBTRACTION OF$'
 space db ' $'
 msg1 db 'AND$'
 msg2 db 'IS$' 
 
.code 

main proc
     

      mov ah,1
      int 21h
     
      mov bl,al
     
      mov ah,1
      int 21h
     
      mov cl,al
     
     
     
      mov ah,2
      mov dl,0dh ; carriage return
      int 21h
      mov dl,0ah ;new line
      int 21h
     
      mov ax,@data ;initialize data segmet
      mov ds,ax
      lea dx,msg
      mov ah,9
      int 21h
     
     
     
      lea dx,space
      mov ah,9
      int 21h
     
      mov ah,2
      mov dl,bl
      int 21h
     
      lea dx,space
      mov ah,9
      int 21h
     
      lea dx,msg1
      mov ah,9
      int 21h
     
     
      lea dx,space
      mov ah,9
      int 21h
     
      mov ah,2
      mov dl,cl
      int 21h
     
     
      lea dx,space
      mov ah,9
      int 21h
     
     
      lea dx,msg2
      mov ah,9
      int 21h
     
      lea dx,space
      mov ah,9
      int 21h
     
     
      sub bl,cl ;sum
     
      add bl,48d ;convert to ascii number
     
      mov dl,bl
      mov ah,2
      int 21h
     
     
      mov ah,4ch
      int 21h
      main endp 
 
end main
ret