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
txt_msjNum1_15 db "HOLA TE EXTRA�O :(",0

.code 

main15 PROC
;L�gica del Programa
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov ecx, 10

	ciclo:
		mov edx, offset txt_msjNum1_15
		call writeString
		call crlf

	dec ecx
	cmp ecx, 0
	jg ciclo
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main15 ENDP

END main15