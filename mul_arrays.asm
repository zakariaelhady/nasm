segment .data
	tab1 db 1,2,3,4,5
	tab2 db 8,7,6,5,4
	tab3 dw 0,0,0,0,0
segment .bss
segment .text
global _main
_main:	
mov ecx,5
mov esi,0
mov edi,0


etq1:mov al,[tab1+esi]
     mov bl,[tab2+esi]
     mul bl
     mov [tab3+edi],ax
     add edi,2
     inc esi
     loop etq1
fin:
ret