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
tP1_msj_25 db "Ingresa un numero: ",0
tR1_msj_25 db "Es Primo",0
tR2_msj_25 db "No es Primo",0
contador_P25 dword 0   ;Contador de divisiones enteras
.code 

main25 PROC
;L�gica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov edx, offset tP1_msj_25
	call writeString
	call readInt   ;eax
	call crLf

	mov edx, offset tR1_msj_25
	call WRITESTRING   ;valor de B
	call readint	   ;   eax

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	mov ebx, eax   ;Respaldo de eax en ebx

	mov ecx, 2   ;Apuntador comienza en 2

	ciclo:
		mov eax, ebx   ;Para recuperar el valor del n�mero
		mov edx, 0   ;Para limpiar el resgistro

		div ecx   ;eax / ecx

		jnz continuar
			;Camino del NO, es decir, no existe residuo
			inc contador_P25
		
		continuar:
			inc ecx
			cmp ecx, ebx
			jl ciclo

	;mov eax, contador_P25
	;call writeDec

	cmp contador_P25, 0
	jz esPrimo
		;No es Primo
		mov edx, offset tR2_msj_25
		jmp continuar2

	esPrimo:
		mov edx, offset tR1_msj_25

	continuar2:
		call writeString
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main25 ENDP

END main25