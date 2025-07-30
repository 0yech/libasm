global ft_write
extern __errno_location

section .text

ft_write:
    mov     rax, 1              ; sys_write syscall number
    syscall
    cmp     rax, 0
    jl      .error				; if rax lower than 0, jmp to .error
    ret

.error:
    neg     rax                 ; make write's return positive for errno
    push    rax                 ; Save errno on stack
    call    __errno_location wrt ..plt  ; Use PLT to find errnoloc's adress at runtime, avoiding -no-pie. (suspicious workaround for newer linux)
    pop     rdx                 ; Restore errno from the stack into rdx
    mov     [rax], rdx          ; Store errno into errno's ptr
    mov     rax, -1             ; Return -1
    ret