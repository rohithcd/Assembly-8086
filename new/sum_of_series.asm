LXI H,2000H
MOV C,M
MVI B,00H
MVI A,00H
AGAIN: INX H
ADD M
JNC NEXT
INR B
NEXT: DCR C
JNZ AGAIN
INX H
MOV M,A
INX H
MOV M,B
HLT