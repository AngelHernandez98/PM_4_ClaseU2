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
t_P1msj_19 db " X ",0
t_P2msj_19 db " ? = ",0

.code 

main19 PROC
;Lógica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	call readInt   ;Tabla
	mov ebx, eax  ;Tabla que se va aplicar
	mov ecx, 1    ;Contador de la tabla

	ciclo:
		mov eax, ebx  ; para regresar el valor de tabla
		call writedec 

		mov edx, offset t_P1msj_19
		call writestring

		mov eax, ecx
		call writedec

		mov edx, offset t_P2msj_19
		call writestring

		call crlf

		inc ecx
		cmp ecx, 10
		jle ciclo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main19 ENDP

END main19