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
msj0_P27 db "Ingrese el valor de la base: ",0
msj1_P27 db "Ingrese el valor de la altura: ",0
msj2_P27 db "El area del triangulo es: ",0

base_P27 dword ?
altura_P27 dword ?
resultado_P27 dword ?

.code
main27 PROC
; Lógica del Programa

	mov edx, offset msj0_P27
	call writeString
	call readint
	call crlf 

	mov base_P27, eax

	mov edx, offset msj1_P27
	call writeString
	call readint
	call crlf

	mul base_P27 ; eax = base * altura

	mov base_P27, 2

	mov edx, 0

	div base_P27

	mov edx, offset msj2_P27
	call writeString
	call writedec
	call crlf
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main27 ENDP
END main27

;PROGRAMA ELABORADO POR: hdz hdz angel  CALIF 9.