;SUM OF EVEN NUMBERS 8085
MVI A,00H
MVI B,00H
MVI D,00H
LXI H,4000H
MOV C,M

LOOP: INR B
INR B
ADD B
JNC NEXT
INR D
NEXT: DCR C
JNZ LOOP 

STA 4002H
MOV A,D
STA 4003H

HLT