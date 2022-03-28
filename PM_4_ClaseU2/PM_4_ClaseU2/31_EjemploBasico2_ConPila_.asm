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

main31 PROC
;Lógica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;Tarea.. Hacer el desglose y explicación línea a línea de este programa.

	mov eax, 10    ;<=== Se mueve al registro 'eax' el número 10
	mov ebx, 20    ;<=== Se mueve al registro 'ebx' el número 20

	call writedec  ;<=== Con la instrucción 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf      ;<=== Con la instrucción 'call CrLf' se hace un salto de línea
	call writedec  ;<=== Con la instrucción 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf      ;<=== Con la instrucción 'call CrLf' se hace un salto de línea

	push eax       ;<=== Con 'push' se agrega  a la pila el valor que tiene el registro 'eax'
	push ebx       ;<=== Con 'push' se agrega  a la pila el valor que tiene el registro 'ebx'

	pop eax        ;<=== Con 'pop' se elimana de la pila el valor que tiene el registro 'eax'
	pop ebx        ;<=== Con 'pop' se elimana de la pila el valor que tiene el registro 'ebx'

	call writedec  ;<=== Con la instrucción 'call writeDec' se imprime en consola el valor eliminador de la pila
	call crlf      ;<=== Con la instrucción 'call CrLf' se hace un salto de línea
	xchg eax, ebx  ;<=== Con la instrucción 'xchg' se cambia los valores entre los registros 'eax' y 'ebx'
 	call writedec  ;<=== Con la instrucción 'call writeDec' se imprime en consola el valor de 'eax'
	call crlf      ;<=== Con la instrucción 'call CrLf' se hace un salto de línea

	; eax -> 10
	; ebx -> 20
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main31 ENDP

END main31