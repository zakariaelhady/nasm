segment .data
	a db 9
	b db 12
segment .bss
segment .text
global _main
_main
     mov al,[a]
     mov bl,[b]
     cmp al,bl
     jl etq1
     mov al,[a]
     mov [200h],al
     mov al,[b]
     mov [201h],al
     jmp etq2
etq1:
     mov al,[b]
     mov [200h],al
     mov al,[a]
     mov [201h],al

etq2:	
 mov al,[200h]
 mov bl,[201h]
 cmp bl,0
 je etq3
 cbw
 call PGCD
 mov [202h],al
 jmp fin

etq3:
 mov [202h],al
 
fin:	
ret
PGCD:	
 push ax
 push bx
	
 div bl
 cmp ah,00h
 jz Fin
 mov al,bl
 mov bl,ah
 cbw
 call PGCD
	
 pop bx
 pop ax
Fin:	
ret
