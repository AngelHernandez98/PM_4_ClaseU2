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

main30 PROC
;L�gica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;Tarea.. Hacer el desglose y explicaci�n l�nea a l�nea de este programa.

	mov eax, 20    ;<=== Se mueve al registro 'eax' el n�mero 20
	call writedec  ;<=== Con la instrucci�n 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf      ;<=== Con la instrucci�n 'call CrLf' se hace un salto de l�nea
	push eax       ;<=== Con 'push' se agrega  a la pila el valor que tiene el registro 'eax'
	
	call writedec  ;<=== Con la instrucci�n 'call writeDec' se imprime en consola el valor agregado a la pila
	call crlf	   ;<=== Con la instrucci�n 'call CrLf' se hace un salto de l�nea

	mov ebx, 5	   ;<=== Se mueve al registro 'ebx' el n�mero 5
	mov eax, ebx   ;<=== Se mueve al registro 'eax' el valor almacenado en 'ebx'
	call writedec  ;<=== Con la instrucci�n 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf	   ;<=== Con la instrucci�n 'call CrLf' se hace un salto de l�nea

	pop ebx		   ;<=== Con 'pop' se elimana de la pila el valor que tiene el registro 'ebx'
				   ; y en el mismo registro se almacena el �ltimo valor que tiene la pila

	mov eax, ebx   ;<=== Se mueve al registro 'eax' el valor almacenado en 'ebx'
	call writedec  ;<=== Con la instrucci�n 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf	   ;<=== Con la instrucci�n 'call CrLf' se hace un salto de l�nea

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main30 ENDP

END main30