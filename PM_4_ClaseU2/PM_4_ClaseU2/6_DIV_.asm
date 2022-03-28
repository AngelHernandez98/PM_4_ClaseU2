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
num_6 word 4d

.code 

main6 PROC
;Lógica del Programa

;DIV operando 1, operando2
;DIV destino,      origen; el resultado de la seuma se guarda en destino
mov ax, 10d
mov bx, 2d

mov edx, 0    ;limpia el registro edx
div ebx ; cociente en eax    /   residuo en edx    ;10 / 2 = 5     residuo = 0

mov edx, 10

mov edx, 0
div num_6   ; 
call writeDec

;div 5   ;NO SE PUEE INMEDIATOS 

;call waitmsg

exit

main6 ENDP

END main6