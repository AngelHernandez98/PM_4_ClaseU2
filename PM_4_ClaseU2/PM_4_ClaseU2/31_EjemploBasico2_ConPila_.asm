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

main31 PROC
;L�gica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;Tarea.. Hacer el desglose y explicaci�n l�nea a l�nea de este programa.

	mov eax, 10    ;<=== Se mueve al registro 'eax' el n�mero 10
	mov ebx, 20    ;<=== Se mueve al registro 'ebx' el n�mero 20

	call writedec  ;<=== Con la instrucci�n 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf      ;<=== Con la instrucci�n 'call CrLf' se hace un salto de l�nea
	call writedec  ;<=== Con la instrucci�n 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf      ;<=== Con la instrucci�n 'call CrLf' se hace un salto de l�nea

	push eax       ;<=== Con 'push' se agrega  a la pila el valor que tiene el registro 'eax'
	push ebx       ;<=== Con 'push' se agrega  a la pila el valor que tiene el registro 'ebx'

	pop eax        ;<=== Con 'pop' se elimana de la pila el valor que tiene el registro 'eax'
	pop ebx        ;<=== Con 'pop' se elimana de la pila el valor que tiene el registro 'ebx'

	call writedec  ;<=== Con la instrucci�n 'call writeDec' se imprime en consola el valor eliminador de la pila
	call crlf      ;<=== Con la instrucci�n 'call CrLf' se hace un salto de l�nea
	xchg eax, ebx  ;<=== Con la instrucci�n 'xchg' se cambia los valores entre los registros 'eax' y 'ebx'
 	call writedec  ;<=== Con la instrucci�n 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf      ;<=== Con la instrucci�n 'call CrLf' se hace un salto de l�nea

	; eax -> 10
	; ebx -> 20
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main31 ENDP

END main31