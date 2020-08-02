_print:
    push    rax
    mov     rbx, 0
printLoop:
    inc     rax
    inc     rbx
    mov     cl, [rax]
    cmp     cl, 0
    jne     _printLoop

    mov     rax,    0x2000004
    mov     rdi,    1
    pop     rsi
    mov     rdx,    rbx
    syscall

    ret

_exit:
    mov     rax,    0x2000001
    mov     rdi,    0
    syscall