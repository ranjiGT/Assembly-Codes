	MOV R0, #30H
	MOV A, R0
  L1:
    MOV B, A
  L3:
    DJNZ R2, L2
    SJMP STP
  L2:
    INC R0
    MOV A, R0
    CJNE A, B, NEQ
	SJMP L3
  NEQ:
	JC L3
	SJMP L1
  STP:
	MOV R1,B


  
 