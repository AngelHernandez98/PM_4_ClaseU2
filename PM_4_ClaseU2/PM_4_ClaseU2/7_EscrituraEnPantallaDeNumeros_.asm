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
NUM_7 dword 4d
.code 

main7 PROC
;L�gica del Programa

	; SOLO SE PUEDE IMPRIMIR EN PANTALLA LOS N�MEROS QUE SE ENCUENTREN EN EL REGISTRO "EAX"
	; SE PUEDE IMPRIMIR CON SIGNO
	MOV EAX, NUM_7 
	
	; IMPRESI�N CON SIGNO
	CALL WRITEINT 

	; SALTO DE L�NEA
	CALL CRLF

	; IMPRESI�N SIN SIGNO
	CALL WRITEDEC

exit

main7 ENDP

END main7