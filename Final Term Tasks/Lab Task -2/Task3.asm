.model small        
.stack 100h         
.data              
    msg db 'Give Input: $'  
.code  
           
main proc 
    mov ax, @data
    mov ds, ax

    mov ah, 09h     
    lea dx, msg 
    int 21h         

    mov ah, 01h     
    int 21h         
    sub al, '0'     

    cmp al, 1       
    je Addition          

    cmp al, 2       
    je Subtraction     

    cmp al, 3       
    je Output        

    mov ah, 02h     
    mov dl, 'c'     
    int 21h         
    jmp Exit      

Addition:
    mov ah, 02h     
    mov dl, '5'     
    int 21h         
    jmp Exit      

Subtraction:
    mov ah, 02h     
    mov dl, '1'     
    int 21h         
    jmp Exit      

Output:
    mov ah, 02h     
    mov dl, al      
    add dl, '0'     
    int 21h         

Exit:
    mov ah, 4ch     
    int 21h         

    main endp           
end main            
