.model small        
.stack 100h         
.data              
.code             
main proc           
    mov ah, 02h     
    mov bl, 'b'     
    mov dl, 1       
    mov cl, 0       

    cmp dl, 3       
    jge exit      
    
    cmp cl, 3       
    jge exit      
    
    mov dl, bl      
    int 21h         
    
exit:
    mov ah, 4ch     
    int 21h         

main endp           
end main            
