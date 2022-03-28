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
txt_msjNum_13 db "Ingrese el primero numero: ",0
txt_msjPar_13 db "Es Par ",0
txt_msjImpar_13 db "Es Impar ",0
txt_resultado_11 db "La suma de los 3 numero es: ",0

.code 

main13 PROC
;Lógica del Programa

	mov edx, offset txt_msjNum_13   ;Ingresa un numero:
	call writeString
	call crlf

	call readInt   ;Leer el numeor inresador por el usuario. Se guarda en EAX

	;EAX = Dividendo
	;Divisor = (Memeoria, EBX, >ECX<)
	;Residuo = EAX

	mov ecx, 2
	mov edx, 0   ;Para limpiar el registro

	div ecx  ; EAX / ECX => / 2

	;Checar edx para saber si es PAR o IMPAR

	cmp edx, 0   ;Compara edx con 0   ... De´pués se puede analizar si el resultado es menor, igual, etc
	;CMP realiza una comparación, aplicando una resta "temporal", que no altera a los operando
	
	;Para determinar que realizar con base en la comparación se emplea a los Saltos Condicionales
	;jz = salta si es cero ... salta si es igual = je

	jz esPar
		mov edx, offset txt_msjImpar_13   ;Es Par
		call writeString
		call crlf
		jmp continuar
	esPar:
		mov edx, offset txt_msjPar_13   ;Es Par
		call writeString
		call crlf
	continuar:

exit

main13 ENDP

END main13