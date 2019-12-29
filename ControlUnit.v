module ControlUnit(

  input [6 : 0] OpCode,
  output Branch,
  output MemRead,
  output MemtoReg,
  output [1:0]Aluop,
  output MemWrite,
  output AluSrc,
  output RegWrite
);
reg [8:0] outcome;
assign  {AluSrc ,MemtoReg ,RegWrite ,MemRead ,MemWrite ,Branch } = outcome[8:2];
assign Aluop = outcome[1:0];
always @( OpCode )
casex(OpCode)
	11'b1xx0101x000: outcome = 9'b000100010;
        11'b11111000010: outcome = 9'b011110000;
        11'b11111000000: outcome = 9'b110001000;
        11'b10110100xxx: outcome = 9'b101000101;
	11'b00000000000: outcome = 9'b000000000;
endcase
    
endmodule
