// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@sum
D=M
@i
M=1

(LOOP)
@R0
D=M
@i
D=M-D
@END
D;JGT
@sum
D=M
@R1
D=D+M
@i
D=M
D=D+M
@LOOP
0;JMP
(END)
@2
D=M
@SUM
D=M