.model small
.stack 100h

.data
msg1 db 0dh, 0ah, 'Enter a character: $'
msg2 db 0dh, 0ah, 'Binary representation: $'
msg3 db 0dh, 0ah, 'Number of 1 bits: $'
char db ?
count db 0

.code
main proc
mov ax, @data
mov ds, ax

; Prompt user for input
lea dx, msg1
mov ah, 09h
int 21h

; Read character input
mov ah, 01h
int 21h
mov char, al

; Convert ASCII code to binary
mov al, char
mov cx, 8
mov bh, 0
mov bl, 1

L1:
shr al, 1
jc L2
mov dl, '0'
jmp L3

L2:
mov dl, '1'
inc count

L3:
mov ah, 02h
int 21h
loop L1

; Print number of 1 bits
lea dx, msg3
mov ah, 09h
int 21h

mov al, count
add al, 30h
mov ah, 02h
int 21h

mov ah, 4ch
int 21h
main endp
end main
