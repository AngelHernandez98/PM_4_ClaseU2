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

.code 

main30 PROC
;Lógica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;Tarea.. Hacer el desglose y explicación línea a línea de este programa.

	mov eax, 20    ;<=== Se mueve al registro 'eax' el número 20
	call writedec  ;<=== Con la instrucción 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf      ;<=== Con la instrucción 'call CrLf' se hace un salto de línea
	push eax       ;<=== Con 'push' se agrega  a la pila el valor que tiene el registro 'eax'
	
	call writedec  ;<=== Con la instrucción 'call writeDec' se imprime en consola el valor agregado a la pila
	call crlf	   ;<=== Con la instrucción 'call CrLf' se hace un salto de línea

	mov ebx, 5	   ;<=== Se mueve al registro 'ebx' el número 5
	mov eax, ebx   ;<=== Se mueve al registro 'eax' el valor almacenado en 'ebx'
	call writedec  ;<=== Con la instrucción 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf	   ;<=== Con la instrucción 'call CrLf' se hace un salto de línea

	pop ebx		   ;<=== Con 'pop' se elimana de la pila el valor que tiene el registro 'ebx'
				   ; y en el mismo registro se almacena el último valor que tiene la pila

	mov eax, ebx   ;<=== Se mueve al registro 'eax' el valor almacenado en 'ebx'
	call writedec  ;<=== Con la instrucción 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf	   ;<=== Con la instrucción 'call CrLf' se hace un salto de línea

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main30 ENDP

END main30