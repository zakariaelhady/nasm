segment .data
t1 dw 0,3,4,5,6	
t2 dw 0,0,0,0,0	

segment .bss 
segment .text
global _main
_main:

mov esi,0

a:	cmp esi,10
	je b
	mov ax,[t1+esi]
	push ax
	add esi,2
	jmp a
	
b:	mov esi,0
c:	cmp esi,10
	je fin
	pop ax
	mov [t2+esi],ax
	add esi,2
	jmp c
fin:
ret