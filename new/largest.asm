LXI H,2060H
MOV B,M 
DCR B 
INX H 
MOV A,M 
REPEAT: INX H 
CMP M 
JNC NEXT 
MOV A,M 
NEXT: DCR B 
JNZ REPEAT 
INX H 
MOV M,A 
HLT

