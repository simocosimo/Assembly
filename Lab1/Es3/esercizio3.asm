.model small
.stack
.data
opa dw -459
opb dw 470
opc dw 32756
opd dw 1

.code
.startup
MOV AX, opa ; non setta flag
ADD AX, opb ; SF=0, CF=1, OF=0
ADD AX, opc ; SF=0, CF=0, OF=0
ADD AX, opd ; SF=1, CF=1, OF=1 --> Overflow! (notare sf settato ad 1) 

.exit
END