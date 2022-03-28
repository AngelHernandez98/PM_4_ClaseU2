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
txt_msjNum1_14 db "Ingresa Numero 1:",0
txt_msjNum2_14 db "Ingresa Numero 2:",0
txt_msjMayor_14 db "El Numero Mayor es: ",0
txt_msjMenor_14 db "El Numero Menor es: ",0
txt_msjIguales_14 db "Son Iguales: ",0

.code 

main14 PROC
;Lógica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov edx, offset txt_msjNum1_14
	call writeString
	call readint  ; eax 

	call crlf ; salto de linea

	mov ebx, eax ;respaldar a num1

	mov edx, offset txt_msjNum2_14
	call writestring
	call readint ; eax

	;num1 = ebx
	;num2 = eax

;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	cmp eax, ebx  ; 

	;cmp resta los operandos y altera las banderas
	; Los operandos no se ven afectados por la resta

	; num2-num1   
	;por ejemplo si: num2  = 5 y num1 = 10
	;				 Resultado = -5

	;por ejemplo si: num2  = 10 y num1 = 5
	;				 Resultado = 5

	;por ejemplo si: num2  = 5 y num1 = 5
	;				 Resultado = 0

	jg num2EsMayor
	je sonIguales
		; num1EsMayor
		xchg eax, ebx 

	num2EsMayor:
		
	mov edx, offset txt_msjMayor_14
	call writeString
	call writedec

	xchg eax, ebx

	mov edx, offset txt_msjMenor_14
	call writeString
	call writedec

	jmp continuar

	sonIguales:
		mov edx, offset txt_msjIguales_14
		call writestring
		call writedec

	continuar:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main14 ENDP

END main14