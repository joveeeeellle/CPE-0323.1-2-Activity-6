.model small
.stack 100h
.data
    NUM dq 03Dh   ; 64-bit number
    newline db 0Dh, 0Ah, '$'  ; Newline character for formatting
.code
main proc
    mov ax, @data
    mov ds, ax

    mov rax, NUM
    mov rcx, 64
    mov bx, 0

print_loop:
    test rax, 8000000000000000h
    jz zero_bit

    mov dl, '1'
    jmp print_char

zero_bit:
    mov dl, '0'

print_char:
    mov ah, 02h
    int 21h

    shl rax, 1
    inc bx
    cmp bx, 64
    jnz print_loop

    mov dx, offset newline
    mov ah, 09h
    int 21h

    mov ax, 4C00h
    int 21h

main endp
end main
