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
txt_num1_11 db "Ingrese el primero numero: ",0
txt_num2_11 db "Ingrese el segundo numero: ",0
txt_num3_11 db "Ingrese el tercer numero: ",0
txt_resultado_11 db "La suma de los 3 numero es: ",0

.code 

main11 PROC
;Lógica del Programa
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;1.- Pedir Numero 1
	mov edx, offset txt_num1_11
	call writeString
	call crlf
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;2.- Leer Numero 1 --> EAX
	call readint ; lee el valor del usuario y lo guarda en eax
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;3.- Pedir Numero 2
	mov edx, offset txt_num2_11
	call writeString
	call crlf
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;4.- Leer Numero 2 -->Respaldar valor anterior de EAX antes de leer
	MOV EBX, EAX ;Respaldo de Numero 1  Opciones de Respaldo en ESTE PROGRAMA: >EBX<, ECX, EDX , MEMORIA*
	call readint ; lee el valor del usuario y lo guarda en eax
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;5.- Pedir Numero 3
	mov edx, offset txt_num3_11
	call writeString
	call crlf
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;6.- Leer Numero 3 -->Respaldar valor anterior de EAX antes de leer
	MOV ECX, EAX ;Respaldo de Numero 2  Opciones de Respaldo en ESTE PROGRAMA: >ECX<, EDX , MEMORIA*
	call readint ; lee el valor del usuario y lo guarda en eax
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;7.- Sumar --> Num1Respaldado(EBX) + Num2Respaldado(ECX) + EAX (NUMERO 3)

	ADD EAX, EBX ; NUMERO 3 + NUMERO 1   <= RESULTADO EN EAX
	ADD EAX, ECX ; (NUMERO 3 + NUMERO1) + NUMERO 2  <= RESULTADO EN EAX

	; ES CORRECTO: 
	;ADD EBX, ECX  ; NUMERO 1 + NUMERO 2   <= RESULTADO EN EBX
	;ADD EAX, EBX  ; NUMERO 3 + (NUMERO1 + NUMERO 2)  <= RESULTADO EN EAX

	;NO ES CORRECTO ESTO: 
	;ADD EBX, EAX  ; NUMERO 1 + NUMERO 3 <= RESULTADO EN EBX
	;ADD ECX, EAX  ; NUMERO 2 + NUMERO 3 <= RESULTADO EN ECX
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;8.- Desplegar Mensaje de Resultado
	mov edx, offset txt_resultado_11
	call writeString
	call crlf
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;9.- Desplegar Resultado
	CALL WRITEINT
	CALL CRLF
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main11 ENDP

END main11