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
NUM_7 dword 4d
.code 

main7 PROC
;Lógica del Programa

	; SOLO SE PUEDE IMPRIMIR EN PANTALLA LOS NÚMEROS QUE SE ENCUENTREN EN EL REGISTRO "EAX"
	; SE PUEDE IMPRIMIR CON SIGNO
	MOV EAX, NUM_7 
	
	; IMPRESIÓN CON SIGNO
	CALL WRITEINT 

	; SALTO DE LÍNEA
	CALL CRLF

	; IMPRESIÓN SIN SIGNO
	CALL WRITEDEC

exit

main7 ENDP

END main7