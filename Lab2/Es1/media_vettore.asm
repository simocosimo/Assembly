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
lab:  ADD AL, [SI]
      INC SI  
      LOOP lab
      IDIV BL      
      MOV RIS, AL  
      ;AL = 5, AH = 5 
      ;(Rispettivamente quoziente e resto)
      .EXIT
      END