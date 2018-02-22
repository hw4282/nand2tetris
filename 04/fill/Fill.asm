// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//(SETTING)
  @8192
  D=A
  @size
  M=D // size = 8192

// check KBD
(MAIN)

  @KBD
  D=M
  @PRESSED
  D;JNE
  @write
  M=0
  @NOT_PRESSED
  0;JMP

// Define value
(PRESSED)
  @write
  M=-1
(NOT_PRESSED)
  @index
  M=0 // index = 0

(LOOP)
  @index
  D=M
  @SCREEN
  D=A+D
  @position
  M=D
  @write
  D=M
  @position
  A=M
  M=D
  @index
  M=M+1
  D=M
  @size
  D=D-M
  @LOOP
  D;JNE

  @MAIN
  0;JMP