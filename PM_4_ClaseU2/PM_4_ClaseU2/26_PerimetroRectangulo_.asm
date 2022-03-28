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
msj0_P26 db "Ingresa el valor de la base: ",0
msj1_P26 db "Ingresa el valor de la altura: ",0
msj2_P26 db "El perimetro es: ",0

;Sintaxis: nombreVariable tipoDatos (byte, word, >dword<) valor
;Cuando no se tenga un valor de inicio se debe poner el signo
;de interrogaci�n (?)

base_P26 dword ?
altura_P26 dword ?
resultado_P26 dword 0
.code 

main26 PROC
;L�gica del Programa
	mov edx, offset msj0_P26
	call writeString
	call readInt   ;eax

	mov base_P26, eax   ;base_P26 = eax

	mov edx, offset msj1_P26
	call writeString
	call readInt   ;eax

	mov altura_P26, eax   ;altura_P26 = eax

	;Multiplicaci�n de base * 2
	mov eax, 2
	mul base_P26   ;eax * base_P26

	add resultado_P26, eax

	;Multiplicaci�n de altura * 2
	mov eax, 2
	mul altura_P26 ;eax * base_P26
	
	add resultado_P26, eax
	mov edx, offset msj2_P26
	call writeString
	mov eax, resultado_P26
	call writeDec

exit

main26 ENDP

END main26