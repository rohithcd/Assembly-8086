DATA SEGMENT
    MSG1 DB "Enter the String: $"
    MSG2 DB "Your String is: $"
    VALUE DB 20 DUP("$")
DATA ENDS 

CODE SEGMENT 
    ASSUME CS:CODE, DS:DATA
start:
    MOV AX, DATA
    MOV DS, AX ;Initialising Data Segment

    LEA DX, MSG1 
    MOV AH, 09H 
    INT 21H
    MOV SI, 00H  
     
l1: MOV AH, 01H
    INT 21H
    MOV VALUE[SI], AL
    INC SI 
    CMP AL, 0DH 
    JNE l1 
     
    LEA DX, MSG2
    MOV AH, 09H 
    INT 21H
    MOV SI, 00H 
     
l3: MOV DL, VALUE[SI]
    MOV AH, 02H
    INT 21H 
    INC SI 
    CMP AL, 0DH
    JNE l3 
    JMP l4 

l4: MOV AH, 4CH 
    INT 21H ;Exit Code 
CODE ENDS

END START