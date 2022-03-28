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


.code 

main17 PROC
;Lógica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	call readint   ; eax El número al que se calculará el factorial
	
	mov ebx, eax   ;Respaldo del contador

	dec ebx

	ciclo:
		mul ebx
		dec ebx

		cmp ebx, 1
		jg ciclo

	call crlf
	call writedec
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main17 ENDP

END main17