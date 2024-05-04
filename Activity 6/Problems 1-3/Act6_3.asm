.model small
.stack 100h

.data

.code
main proc
    mov ax, 10
    shl ax, 1
    add ax, ax
    shl ax, 1

    add ax, ax
    add ax, ax
    sub ax, ax

    add ax, ax

    mov dx, ax
    mov ah, 02h
    int 21h

    mov ax, 4C00h
    int 21h
main endp

end main
