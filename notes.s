; nasm -f elf64 ft_strlen.s
;
;
; Args names
;	1	rdi				register DESTINATION index
;	2	rsi				register SOURCE index
;	3	rdx				register DATA
;	4	rcx				register COUNTER, meant for loops or as 4th args
;	5	r8				beyond 4 args, youre ass at coding.
;	6	r9				assier
;	r10 to r11			non saved temps, can be used as temp vars. Like how youd use int j in C
;	r12 to r15 + rbx	saved temps
;
;
; Sizes
;	byte	8 bits		char
;	word	16 bits
;	dword	32 bits		int
;	qword	64 bits		long or pointers in 64 bits architectures
;
;
; Return values
;	rax		full 64 bits
;	eax		32 bits
;	ax		16 bits
;	al		8 bits
;
;	x86_64 seems to have commonly used vars to me so far.
;
;		With this in mind, calling local functions becomes very interesting.
;		For example, call strlen by doing "call strlen", it strictly takes rdi as its argument
;		and rax and its returned value, you then have to move things around to use it.
;		Here's how you can take strlen's returned value, add a number to it and finally return it :
;
;			push rbx		; push rbx on top of the stack to save values
;			
;			mov rdi, rdi	; just to be sure
;			call ft_strlen	; rdi is taken as arg, return number ends up in rax
;			mov rbx, rax	; move rax's value into rbx
;
;			add rbx, 42		; result of strlen stored in rbx + 42 is now returned in rax
;			pop rbx			; remove rbx from the stack
;			ret				; return final value (rax)