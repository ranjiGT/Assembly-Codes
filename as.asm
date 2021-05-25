ORG 000H
        
        MOV R1,#05H 
AGAIN : MOV A,R1
        MOV R2,A
        MOV R0,#30H
        MOV A,@R0
   UP : INC R0
        MOV B,@R0
        CLR C
        SUBB A,B
        JC SKIP
        MOV B,@R0
        DEC R0
        MOV A,@R0
        MOV @R0,B
        INC R0
        MOV @R0,A
 SKIP : DJNZ R2,UP
        DJNZ R1,AGAIN
 STOP : SJMP STOP