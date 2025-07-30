global ft_rot13
section .text

;	Not needed for libasm, but great practice for different return register sizes

ft_rot13:
    mov al, dil            ; al = char c arg

;	UPPERCASE
    cmp al, 'A'
    jl .check_lower
    cmp al, 'Z'
    jg .check_lower
    cmp al, 'N'
    jl .rot_add
    sub al, 13
    ret

;	LOWERCASE
.check_lower:
    cmp al, 'a'
    jl .end
    cmp al, 'z'
    jg .end
    cmp al, 'n'
    jl .rot_add
    sub al, 13
    ret

.rot_add:
    add al, 13
    ret

.end:
    ret
