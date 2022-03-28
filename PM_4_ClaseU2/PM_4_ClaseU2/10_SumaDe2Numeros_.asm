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
txt_num1_10 db "Ingrese el primero numero: ",0
txt_num2_10 db "Ingrese el segundo numero: ",0
txt_resultado_10 db "La suma de ambos numero es: ",0

.code 

main10 PROC
;Lógica del Programa
	
	;Se captura el primero número
	mov edx, offset txt_num1_10 ;
	call writeString
	call CrLf

	call readInt  ; Almacena el valor ingresador por el usuario en eax

	;Se captura el segundo número
	call CrLf
	mov edx, offset txt_num2_10 ;
	call writeString
	call CrLf

	mov edx, eax  ;Respalda el valor de eax (num1) en edx, debido a que de moomento edx ya no esta utilidad

	call readInt  ; Almacena el valor ingresador por el usuario en eax

	call CrLf

	add eax, edx

	mov edx, offset txt_resultado_10
	call writeString
	call writeInt


;call waitmsg

exit

main10 ENDP

END main10