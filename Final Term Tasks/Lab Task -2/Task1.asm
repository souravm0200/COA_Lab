.model small        
.stack 100h         
.data              
.code              
main proc           
    mov ah, 02h     
    mov bl, 'o'     
    mov cl, 'e'     
    mov dl, 3       

    cmp dl, 1       
    je showO          
    
    cmp dl, 3       
    je showO    
    
showO:
    mov dl, bl      
    int 21h         
    jmp exit 
           
    
    cmp dl, 2       
    je showE      
    
    cmp dl, 4       
    je showE          
    jmp exit          

showE:
    mov dl, cl      
    int 21h         

exit:
    mov ah, 4ch     
    int 21h         

main endp           
end main            
