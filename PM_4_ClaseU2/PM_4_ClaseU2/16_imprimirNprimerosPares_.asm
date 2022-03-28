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

main16 PROC
;Lógica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;Aquí debería ir un mensaje solocitando la cantidad de números pares
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