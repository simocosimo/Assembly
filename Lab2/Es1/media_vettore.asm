DIM   EQU   10
      .MODEL SMALL
      .STACK
      .DATA
ARR   DB    1, 2, 3, 4, 5, 6, 7, 8, 9, 10
RIS   DB    ?

      .CODE
      .STARTUP
      MOV CX, DIM 
      MOV BL, DIM
      LEA SI, ARR
      MOV AX, 0
lab:  ADD AX, [SI]
      ADD SI, 2   
      LOOP lab
      IDIV BL
      MOV RIS, AL
      .EXIT
      END