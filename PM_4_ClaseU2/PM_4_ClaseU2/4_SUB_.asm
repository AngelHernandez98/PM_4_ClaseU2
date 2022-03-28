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
num_4 word 12d

.code 

main4 PROC
;Lógica del Programa

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SUB operando 1,    operando2
;SUB  destino,        origen; el resultado de la seuma se guarda en destino

;OPERANDO 1 (DESTINO) = SUSTRAENDO
;OPERANDO 2 (ORIGEN) = MINUENDO
	
mov ax, 10d
mov bx, 5d
mov cx, -5d

;EJEMPLO #1
;SUB ax, bx     ;10 - 5 = 5 el resultado estará en ax

;EJEMPLO #2
;SUB bx, ax     ;5 - 10 = -5 el resultado estará en ax

;EJEMPLO #3
;SUB cx, ax     ;-5 - 10 = -15 el resultado estará en cx

;SUB ax, bl NO SE PUEDE
;SUB bl, ax NO SE PUEDE

SUB num_4, ax     ;el resultado estará en num_3

;call waitmsg

exit

main4 ENDP

END main4