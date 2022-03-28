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

main23 PROC
;Lógica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov ecx, 1   ;Numero que se va a imprimir
	mov ebx, 1   ;Cantidad de repeticiones

	ciclo:
		mov ebx, 1
		mov eax, ecx

		ciclo2:
			call writedec
			call crlf
			inc ebx
			cmp ebx, 10
			jle ciclo2

		call crlf
		inc ecx
		cmp ecx, 10
		jle ciclo

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main23 ENDP

END main23