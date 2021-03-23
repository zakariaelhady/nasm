segmet.data
	t db 0,0,0,0,5,0,5,6,0,7,8,9,4,0,5,3,4,0,1,2
segment.bss
segment .text
global _main
_main

mov si,200h
mov edi,0

tab:
	mov ax,[t+edi]
	mov si,ax
	inc si
	inc edi
	cmp edi,20
	jne tab
	call tri

fin:
ret

tri:	
 mov cx,20
etq3:	mov si,200h
	mov dx,cx
	mov bl,0
etq2:	mov al,[si]
	cmp al,[si+1]
	jle etq1
	xchg al,[si+1]
	mov [si],al
	inc bl
etq1:	inc si
	dec dx
	jnz etq2
	cmp bl,0
	jz Fin
	dec cx
	jnz etq3
Fin:	
ret