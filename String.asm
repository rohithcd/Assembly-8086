DATA SEGMENT
    MSSG DB "Hello World !!!$"
DATA ENDS 
    
CODE SEGMENT 
    ASSUME CS:CODE, DS:DATA
start:
    MOV AX, DATA
    MOV DS, AX ;Initialising Data Segment
    
    LEA DX, MSSG 
    MOV AH, 09H 
    INT 21H 

    MOV AH, 4CH 
    INT 21H ;Exit Code 
CODE ENDS

END START