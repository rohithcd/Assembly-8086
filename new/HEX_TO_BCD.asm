start:	IN 00h
	MVI d, 00h
	MOV c, a
	XRA a
loop:	ADI 01
	DAA
	JNC skip
	INR d
skip:	DCR c
	JNZ loop
	OUT 05h
	MOV a, d
	OUT 06h
	HLT