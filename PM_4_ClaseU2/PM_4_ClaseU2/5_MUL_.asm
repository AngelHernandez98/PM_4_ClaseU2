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
num_5 word 12d

.code 

main5 PROC
;L�gica del Programa

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SUB operando 1,    operando2
;SUB  destino,        origen; el resultado de la seuma se guarda en destino

;OPERANDO 1 (DESTINO) = SUSTRAENDO
;OPERANDO 2 (ORIGEN) = MINUENDO
	
mov eax, 10d
mov ebx, 5d

mul ebx    ;el resultado estar� en ax     ;10 * 5 = 50

; mul 5     ;NO SE PUEDE CON INMEDIATOS

;CUANDO REALIZAMOS MUTIPLICACIONES CON RESGITROS/MEMORIA DE 32BITS SE APLICA LO EXPLICADO EN CLASE

;call waitmsg

exit

main5 ENDP

END main5