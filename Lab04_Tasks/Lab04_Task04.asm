.model small
.stack 100h

.data
msg1 db 0ah,0dh,'Less than 5', 0
msg2 db 0ah,0dh,'Greater than 5', 0
msg3 db 0ah,0dh,'Equal to 5', 0 

input_msg db 0dh, 0ah, 'Enter a number: $'
input_buffer db 6, 0
input_len equ $-input_buffer

.code  

main proc     
     
    mov ax, @data
    mov ds, ax

    ; display input message
    mov ah, 09h
    lea dx, input_msg
    int 21h

    ; read user input
    mov ah, 0ah
    mov dx, offset input_buffer
    int 21h

    ; convert input to integer
    mov bl, input_buffer+2
    mov bh, 0
    sub bl, 30h ; convert ASCII digit to binary
    cmp bl, 5 
    
    jl less_than
    jg greater_than
    jmp equal_to

less_than:
    ; display "Less than 5" message
    mov ah, 09h
    lea dx, msg1
    int 21h
    jmp end_prog

greater_than:
    ; display "Greater than 5" message
    mov ah, 09h
    lea dx, msg2
    int 21h
    jmp end_prog

equal_to:
    ; display "Equal to 5" message
    mov ah, 09h
    lea dx, msg3
    int 21h

end_prog:
    mov ah, 4ch
    int 21h 
    
    main endp
end main
