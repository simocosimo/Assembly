DIM   EQU   20
      .MODEL SMALL
      .STACK
      .DATA
ARR   DW    DIM   DUP(?)

      .CODE
      .STARTUP
      MOV CX, DIM
      MOV AX, 0 
      MOV BX, 1
      LEA SI, ARR
fib:  MOV [SI], BX
      ADD BX, AX
      MOV AX, [SI]
      ADD SI, 2
      LOOP fib
      .EXIT
      END