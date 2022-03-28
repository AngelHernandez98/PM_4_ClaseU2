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
msj0_P28 db "Ingrese un numero: ",0
msj1_P28 db "El numero absoluto es: ",0
aux dword -1
.code 

main28 PROC
;Lógica del Programa

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