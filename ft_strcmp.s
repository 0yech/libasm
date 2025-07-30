global ft_strcmp
section .text

ft_strcmp:
.loop:
	mov al, [rdi]
	mov bl, [rsi]
	cmp al, bl
	jne .diff
	test al, al
	je	.nodiff
	inc rdi
	inc rsi
	jmp .loop
.diff:
	movzx eax, al
	movzx ebx, bl
	sub eax, ebx
	ret
.nodiff:
	xor eax, eax
	ret
; MEMO - movzx - Move zero-extend, moves value to a bigger size register and fills the rest with 0s