;Autor JJV
;Programa para sumar dos numeros 
;Inicio del programa
.org 0000h
	LD b, FF ;Carga el valor en el registro a
	LD A, 8 ;Contador de bits, 
Convertir:	
	RLC B ;Rotar el bit más significativo a través del carry
	RLC B
	RLC B
	RLC B
	RLC B
	RLC B
	RLC B
	RLC B
	RL BC ;Rotar el carry en el bit menos significativo de A
	DEC A ;Decrementa el contador de bits 
	JP NZ, Convertir
;Ahora el registro BC contiene el numero binario

.org 0010h
	LD C, FF ;Carga el valor en el registro a
	LD H, 8 ;Contador de bits, 
Convert:	
	RLC C ;Rotar el bit más significativo a través del carry
	RLC C
	RLC C
	RLC C
	RLC C
	RLC C
	RLC C
	RLC C
	RL DE ;Rotar el carry en el bit menos significativo de A
	DEC H ;Decrementa el contador de bits 
	JP NZ, Convert
;Ahora el registro DE contiene el numero binario

.org 1000h
	ADD BC, DE ;Suma el valor de DE al registro BC
	LD A, B ;Carga el byte mas alto en el registro A
	LD H, C ;Carga el byte mas bajo en el regsitro H
	HALT ;Detiene la simulacion
.END
	