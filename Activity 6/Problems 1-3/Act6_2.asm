.model small
.stack 100h

.data

.code
main proc
    mov ax, 0F0Fh
    and ax, 0FFFh
    or ax, 000Fh
    mov dx, ax
    mov ah, 02h
    int 21h
    mov ax, 4C00h
    int 21h
main endp

end main
