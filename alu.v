module alu(
	input [63:0] A,B,                   
        input [3:0] ALU_Sel,
        output [63:0] ALU_Out,
	
        output z 
	);
    	reg [63:0] ALU_Result;
    	assign ALU_Out = ALU_Result;
	reg z_Result;
	assign z = z_Result; 
    	always @(A,B,ALU_Sel)	
    	begin
        case(ALU_Sel) 
		4'b0000:
        		ALU_Result = A & B ;
        	4'b0001: 
        		ALU_Result = A | B ;
        	4'b0010: 
           		ALU_Result = A + B;
         	4'b0110: 
           		ALU_Result = A - B;
        endcase
	if(ALU_Result == 64'b0)
	begin 
		z_Result <= 1;
	end
	else
	begin
		z_Result <= 0;
	end
    end

endmodule
