;
; 3b-4.asm
;
; Created: 10/6/2021 6:07:50 PM
; Author : Jao
;


; Replace with your application code
	LDI	R20, 0x00	;make port D an input port
	OUT	DDRD, R20

	LDI	R20, 0xFF	;make port B an output port
	OUT	DDRB, R20	
	OUT	PORTD, R20	;enable pull-up resistors

L1:	IN	R20,PIND	;get data from port D
	OUT	PORTB,R20	;send it to port B
	RJMP	L1		;keep doing this
	

