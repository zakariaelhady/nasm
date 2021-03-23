segment .data
	t1 dd 1,2,3,4,5,6,7,8,9,5
	min dd 0
	max dd 0
	format1 db "min=%d",0
	format2 db "max=%d",0
segment.bss
segment .text
global _main
extern _printf
_main:


    mov esi,0
    mov eax,[t1]
    mov [min],eax
    mov [max],eax

etq2:	mov eax,[t1+esi]
	add esi,4
	cmp [min],eax
	jg  minimum
etq3:	cmp [max],eax
	jl maximum
	cmp esi,40
	je fin
	jmp etq2
	
minimum:mov [min],eax
	jmp etq3
maximum:mov [max],eax
	jmp etq2
	
fin:
       push dword [min]
       push format1
       call _printf
       pop dword [min]
	
       push dword [max]
       push format2
       call _printf
       pop dword [max]
	
ret