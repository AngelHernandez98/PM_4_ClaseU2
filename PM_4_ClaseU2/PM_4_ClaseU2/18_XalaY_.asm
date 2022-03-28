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

main18 PROC
;Lógica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;Aquí debería pedir X
	call readint

	mov ebx, eax   ;X es el número que se multiplicará por si mismo

	;Aquí debería pedir Y
	call readint

	mov ecx, eax   ;Contador (Y)

	dec ecx   ;Para no realizar una mutiplicación adicional
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