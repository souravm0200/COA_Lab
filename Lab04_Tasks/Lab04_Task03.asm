.model small
.stack 100h

.data
    msg db 'Enter a number: $'
    pos_msg db 0ah,0dh,'Positive$'
    neg_msg db 0ah,0dh,'Negative$'

.code


main proc 
     
     mov ax,@data 
     mov ds,ax
                             
    mov ah, 09h              
    lea dx, msg              
    int 21h                   
    

                            
    mov ah, 01h             
    int 21h                 
    sub al, 30h             
    mov bl, al              
    

                             ; check if number is positive or negative
    cmp bl, 0                ; compare number with zero
    jg positive              ; jump to positive label if number is greater than zero
    jl negative              ; jump to negative label if number is less than zero

positive:
                            
    mov ah, 09h             
    lea dx, pos_msg         
    int 21h                 
    

                            
    mov ah, 4Ch             
    int 21h                  
    

negative:
                             
    mov ah, 09h              
    lea dx, neg_msg          
    int 21h                  
    

                             
    mov ah, 4Ch              
    int 21h                  
     
    main endp 
end main
