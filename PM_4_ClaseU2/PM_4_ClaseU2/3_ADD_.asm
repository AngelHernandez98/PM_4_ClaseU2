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
num_3 word 12d

.code 

main3 PROC
;Lógica del Programa

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;ADD operando 1,    operando2
;ADD  destino,        origen; el resultado de la seuma se guarda en destino

mov ax, 10d
mov bx, 5d

add ax, bx; el resultado estará en ax

;add ax, bl NO SE PUEDE
;add bl, ax NO SE PUEDE

add num_3, ax     ;12 + 15     ;el resultado estará en num_3

;call waitmsg

exit

main3 ENDP

END main3