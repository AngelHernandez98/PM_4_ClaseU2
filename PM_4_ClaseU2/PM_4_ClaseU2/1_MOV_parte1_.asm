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
var1_1 byte ?
var2_1 word ?
var3_1 dword ?

.code 

main1 PROC
;L�gica del Programa

;;;;;;;;;; SINTAXIS: mov destino (origen), origen (destino)

;;;;;;;;;; INMEDIATO A INMEDIATO ;;;;;;;;;;
;mov 5,10	; 5 = 10; NO SE PUEDE

;;;;;;;;;; INMEDIATO A REGISTRO ;;;;;;;;;;
;mov AH, 10	; SE PUEDE

;mov ah, 260 NO SE PUEDE, PORQUE EXCEDE LA CAPACIDAD DEL DESTINO

;;;;;;;;;; INMEDIATO A MEMORIA ;;;;;;;;;;
;mov Var1_1, 10 ; SE PUEDE

;mov Var1_1 260  ;NO SE PUEDE PORQUE EXCEDE LA CAPACIDAD DEL DESTINO

;call waitmsg

exit

main1 ENDP

END main1