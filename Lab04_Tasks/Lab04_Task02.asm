.model small
.stack 100h
.data
    hello_msg db  0ah,0dh,'Hello world$'
    
    bye_msg db 0ah,0dh ,'Bye world$'

.code

main proc 
    
    mov ax,@data
    mov ds,ax 
                            ; loop counter
    mov cx, 5

                      ; print "Hello world" loop
hello_loop:
                      
    mov ah, 09h       
    lea dx, hello_msg 
    int 21h                         
    dec cx

                   
    cmp cx, 0  
    
    jne hello_loop 

                   
    mov ah, 09h    
    lea dx, bye_msg
    int 21h        

                    ; exit program
    mov ah, 4Ch     
    int 21h         
   main endp
end main
