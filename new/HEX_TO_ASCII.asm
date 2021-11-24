start:	IN 00h
	MOV b, a
	ANI 0fh
	CALL convert
	OUT 05h
	MOV a, b
	ANI 0f0h
	RRC
	RRC
	RRC
	RRC
	CALL convert
	OUT 06h
	HLT
	
convert: CPI 0ah
	JNC alpha
	ADI 030h
	JMP end
alpha:	ADI 037h
end:	RET