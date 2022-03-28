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
var1_2 byte ?
var2_2 word ?
var3_2 dword ?

.code 

main2 PROC
;L�gica del Programa

;;;;;;;;;; SINTAXIS: mov destino (origen), origen (destino)

;;;;;;;;;; REGISTRO A INMEDIATO ;;;;;;;;;;
;mov 5,ax	; 5 = AX ;NO SE PUEDE

;;;;;;;;;; REGISTRO A REGISTRO ;;;;;;;;;;
;mov AH, BL	;SE PUEDE       ;ax = 16BITS ----> AL AH

;mov ax, BL  ;NO SE PUEDE, PORQUE EXCEDE LA CAPACIDAD DEL DESTINO

;mov BL, AX  ;NO SE PUEDE PORQUE SE EXCEDE LA CAPACIDAD

;------> NO SE PUEDE REALIZAR EL MOV ENTRE DIFERENTES TIPOS DE DATOS

;;;;;;;;;; REGISTRO A MEMORIA ;;;;;;;;;;
;mov Var1_2, AL ;SE PUEDE

;mov Var1_2 ax  ;NO SE PUEDE PORQUE EXCEDE LA CAPACIDAD DEL DESTINO

;mov Var2_2, al ;NO SE PUEDE

;call waitmsg

exit

main2 ENDP

END main2