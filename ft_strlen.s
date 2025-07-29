global ft_strlen				;	prototype call
section .text					;	announce section type, .data for "global" variable calls, .text for code, .bss for uninitialized vars

ft_strlen:
	xor rax, rax				;	Xor operator to initialize rax to 0, rax is the return value in 64 bits, see notes for sizes
.loop:							;	Dots preceding parts of the code is a readability measure, acts like private functions
	cmp byte [rdi + rax], 0		;	Compare (size 1 byte) rDSTi + rax count value, and 0, pretty much strcmp(str + i, 0)
	je	.end					;	jump equal, will jump to the end if the compare value is 0
	inc	rax						;	increment rax
	jmp	.loop					;	jump back to .loop
.end:
	ret							;	returns return value

; Check notes !
