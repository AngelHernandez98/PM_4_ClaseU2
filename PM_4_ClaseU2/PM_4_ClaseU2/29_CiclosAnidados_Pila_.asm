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

.code 

main29 PROC
;L�gica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov ecx, 1   ;Numero que se va a imprimir
	mov ebx, 1   ;Cantidad de repeticiones

	;Operaciones con la pila
	;PUSH POP


	ciclo:
		mov eax, ecx
		push ecx   ;Guardar en la pila el valor de ecx
		mov ecx, 1

		ciclo2:
			call writedec
			call crlf
			inc ecx
			cmp ecx, 10
			jle ciclo2
		call crlf
		pop ecx   ;Obtengo el valor que se guardo en la pila
		inc ecx
		cmp ecx, 10
		jle ciclo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main29 ENDP

END main29