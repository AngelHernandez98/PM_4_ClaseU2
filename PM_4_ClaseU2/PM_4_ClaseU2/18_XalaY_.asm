TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hern�ndez Hern�ndez

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables


.code 

main18 PROC
;L�gica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;Aqu� deber�a pedir X
	call readint

	mov ebx, eax   ;X es el n�mero que se multiplicar� por si mismo

	;Aqu� deber�a pedir Y
	call readint

	mov ecx, eax   ;Contador (Y)

	dec ecx   ;Para no realizar una mutiplicaci�n adicional
	mov eax, ebx    ;<<<------ Para comenzar con las multiplicacioines

	ciclo:
		mul ebx

		dec ecx
		cmp ecx, 0
		jg ciclo

	call crlf
	call writedec
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main18 ENDP

END main18