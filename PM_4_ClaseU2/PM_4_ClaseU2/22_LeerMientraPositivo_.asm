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
tP1_msj_22 db "Ingresa un numero: ",0

.code 

main22 PROC
;L�gica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	;LOOP ES UNA INSTRUCCI�N QUE UNICCAMENTE FUNCIONA CON EL REGSITRO ECX
	mov ecx, 3

	ciclo:
		call readint   ;Leyendo un n�mero y guardaandolo en EAX
		
		cmp eax, 0
		jng finalizar
		;S� es mayor:
			call writedec
			call CrLf

		add ecx, 1
		loop ciclo

		finalizar:
		;call crlf

		;loop ciclo

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main22 ENDP

END main22