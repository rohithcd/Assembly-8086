DATA SEGMENT 
    MSG1 DB "Enter a string: $"
    MSG2 DB "String is $"
    VALUE DB 20 DUP("20")

DATA ENDS 

CODE SEGMENT 
    ASSUME CS:CODE, DS:DATA

start:
    MOV AX, DATA
    MOV DS, AX 
    
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
    MOV SI, 00H
    
l2: MOV DL, VALUE[si]
    MOV AH, 02H
    INT 21H
    INC si 
    cmp AL, 0DH
    JE l3 
    JMP l2
  
l3: MOV AH, 4CH 
    INT 21H 
     
    


CODE ENDS
END START