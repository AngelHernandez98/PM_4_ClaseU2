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
texto1_9 db "Ingresa un Numero: ",0
texto2_9 db "El numeor ingresado fue --> ",0

NUM_9 dword 4d
.code 

main9 PROC
;L�gica del Programa

	mov edx, offset texto1_9
	CALL WriteString
	CALL CrLF

	Call ReadInt
	mov num_9, eax

	mov eax, num_9

	mov edx, offset texto2_9
	call writestring
	call crlf
	call crlf

exit

main9 ENDP

END main9