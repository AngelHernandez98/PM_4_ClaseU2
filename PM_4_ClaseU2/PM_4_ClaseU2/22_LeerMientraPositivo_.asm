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
tP1_msj_22 db "Ingresa un numero: ",0

.code 

main22 PROC
;Lógica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	;LOOP ES UNA INSTRUCCIÓN QUE UNICCAMENTE FUNCIONA CON EL REGSITRO ECX
	mov ecx, 3

	ciclo:
		call readint   ;Leyendo un número y guardaandolo en EAX
		
		cmp eax, 0
		jng finalizar
		;Sí es mayor:
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