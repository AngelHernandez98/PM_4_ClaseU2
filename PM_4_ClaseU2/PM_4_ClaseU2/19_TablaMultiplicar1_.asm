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
t_P1msj_19 db " X ",0
t_P2msj_19 db " ? = ",0

.code 

main19 PROC
;L�gica del Programa
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