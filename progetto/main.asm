	.ORIG x4000

	LEA	R1,INTROUNO	;Lettura Intro
	JSR	salva
	LEA	R1,INTRODUE
	JSR     salva
	HALT
	
salva
	ADD	R6,R7,#0
	BR	leggi

leggi
	LDR	R0,R1,#0
	BRZ	ripristina
	TRAP	X21
	ADD	R1,R1,#1
	BR	leggi
	

ripristina
	ADD	R7,R6,#0
	AND	R6,R6,#0
	RET









fine
	HALT


;**************************+
;Variabili
INTROUNO	.STRINGZ	"Be"
INTRODUE	.STRINGZ	"Scr"









	.END