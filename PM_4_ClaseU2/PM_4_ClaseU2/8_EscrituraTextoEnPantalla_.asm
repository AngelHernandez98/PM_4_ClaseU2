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
texto1_8 db "Primero",0
texto2_8 db "Segundo",0
texto3_8 db "Tercero",0
texto4_8 db "Cuarto",0

NUM_8 dword 4d
.code 

main8 PROC
;L�gica del Programa

	mov edx, offset texto1_8
	CALL WriteString
	CALL CrLF

	mov edx, offset texto2_8
	CALL WriteString
	CALL CrLF

	mov edx, offset texto3_8
	CALL WriteString
	CALL CrLF

	mov edx, offset texto4_8
	CALL WriteString
	CALL CrLF

exit

main8 ENDP

END main8