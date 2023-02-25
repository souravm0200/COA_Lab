org 100h 

.model small
.stack 100h
.data
.code

main proc 
              
          mov ah, 2
          mov dl, 'S'
          int 21h 
          
          mov ah,2
          mov dl,0dh ; carriage return
          int 21h
          mov dl,0ah ;new line
          int 21h
            
          mov ah, 2
          mov dl, 'O'
          int 21h 
          
          mov ah,2
          mov dl,0dh ; carriage return
          int 21h
          mov dl,0ah ;new line
          int 21h
           
          mov ah, 2
          mov dl, 'U'
          int 21h 
          
          mov ah,2
          mov dl,0dh ; carriage return
          int 21h
          mov dl,0ah ;new line
          int 21h
           
          mov ah, 2
          mov dl, 'R'
          int 21h
          
          mov ah,2
          mov dl,0dh ; carriage return
          int 21h
          mov dl,0ah ;new line
          int 21h
           
          mov ah, 2
          mov dl, 'A'
          int 21h 
          
          mov ah,2
          mov dl,0dh ; carriage return
          int 21h
          mov dl,0ah ;new line
          int 21h 
           
          mov ah, 2
          mov dl, 'V'
          int 21h
     
     main endp
end main
ret