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
num_3 word 12d

.code 

main3 PROC
;L�gica del Programa

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;ADD operando 1,    operando2
;ADD  destino,        origen; el resultado de la seuma se guarda en destino

mov ax, 10d
mov bx, 5d

add ax, bx; el resultado estar� en ax

;add ax, bl NO SE PUEDE
;add bl, ax NO SE PUEDE

add num_3, ax     ;12 + 15     ;el resultado estar� en num_3

;call waitmsg

exit

main3 ENDP

END main3