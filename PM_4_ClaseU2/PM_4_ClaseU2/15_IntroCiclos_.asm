TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
txt_msjNum1_15 db "HOLA TE EXTRAÑO :(",0

.code 

main15 PROC
;Lógica del Programa
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