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
num_4 word 12d

.code 

main4 PROC
;L�gica del Programa

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SUB operando 1,    operando2
;SUB  destino,        origen; el resultado de la seuma se guarda en destino

;OPERANDO 1 (DESTINO) = SUSTRAENDO
;OPERANDO 2 (ORIGEN) = MINUENDO
	
mov ax, 10d
mov bx, 5d
mov cx, -5d

;EJEMPLO #1
;SUB ax, bx     ;10 - 5 = 5 el resultado estar� en ax

;EJEMPLO #2
;SUB bx, ax     ;5 - 10 = -5 el resultado estar� en ax

;EJEMPLO #3
;SUB cx, ax     ;-5 - 10 = -15 el resultado estar� en cx

;SUB ax, bl NO SE PUEDE
;SUB bl, ax NO SE PUEDE

SUB num_4, ax     ;el resultado estar� en num_3

;call waitmsg

exit

main4 ENDP

END main4