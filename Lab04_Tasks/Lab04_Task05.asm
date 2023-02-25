.model small
.stack 100h

.data  

input_msg db 0dh, 0ah, 'Enter a character: $'
output_msg db 0dh, 0ah, 'Thank you. $' 
space db 0dh,0ah,'$'
input_buffer db ?
count equ 50

.code  

main proc
    mov ax, @data
    mov ds, ax

                   ; display input message
    mov ah, 09h
    lea dx, input_msg
    int 21h

                   ; read a character from the user
    mov ah, 01h
    int 21h
    mov input_buffer, al

                   ; display the character 50 times on the next line
    mov cx, count
    next_char:
        mov dl, input_buffer
        mov ah, 02h
        int 21h
        dec cx
        jnz next_char  
        
    mov ah, 09h
    lea dx, space
    int 21h    

                    ; display output message
    mov ah, 09h
    lea dx, output_msg
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
