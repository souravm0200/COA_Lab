org 100h

.model small
.stack 100h 
.data

 
.code 

main proc
     
      mov bl,3
      mov cl,5
      add bl,cl ;sum
     
      add bl,48d ;convert to ascii number
     
      mov dl,bl
      mov ah,2
      int 21h
     
     
      mov ah,4ch
      int 21h
      main endp 
 
end main
