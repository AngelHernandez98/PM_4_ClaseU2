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

main16 PROC
;L�gica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;Aqu� deber�a ir un mensaje solocitando la cantidad de n�meros pares
	call readint   ;eax
	mov ebx, eax   ;ebx = Contador de cuantos pares me falta desplegar

	mov eax, 2

	ciclo:
		call writedec
		call crlf

		add eax, 2

		dec ebx   ;Decrementar el contador
		cmp ebx, 0
		jg ciclo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main16 ENDP

END main16