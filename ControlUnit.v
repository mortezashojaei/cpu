module ControlUnit(

  input [10 : 0] OpCode,
  output Reg2Loc,
  output Branch,
  output MemRead,
  output MemtoReg,
  output [1:0]Aluop,
  output MemWrite,
  output AluSrc,
  output RegWrite
);
reg [8:0] outcome;
endmodule
