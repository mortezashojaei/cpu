module ALUControl (ALUOp, instruction, code);

    input [1:0] ALUOp;
    input [10:0] instruction;
    output reg [3:0] code;

endmodule
