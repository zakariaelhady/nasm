
segment .data
	t db 0,0,0,0,5,0,5,6,0,7,8,9,4,0,5,3,4,0,1,2
segment .bss
segment .text
global _main
_main

mov edi,0
mov si,200h
etq1:
	mov al,[t+edi]
	mov [si],al
	inc edi
	inc si
	cmp edi,20
	jne etq1
	call compteurZero

fin:
ret

compteurZero:	
 mov cx, 20
 mov bx, 0
 mov si, 200h
Etq2 :
 mov ax,0
 cmp [si], ax
 jnz Etq1
 inc bx
Etq1 :
 inc si
 loop Etq2
 mov [400h], bx
ret