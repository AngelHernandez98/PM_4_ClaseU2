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
msj0_P28 db "Ingrese un numero: ",0
msj1_P28 db "El numero absoluto es: ",0
aux dword -1
.code 

main28 PROC
;L�gica del Programa

	mov edx, offset msj0_P28
	call writeString
	call readInt
	call CrLf

	cmp eax, 0
	jg continuar
		mul aux
	continuar:
	mov edx, offset msj1_P28
	call writeString
	call writeDec
	call CrLf

exit

main28 ENDP

END main28