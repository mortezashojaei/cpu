`default_nettype none
`timescale 1ns/10ps

module clock(CLK);
	
	output reg CLK;

	initial 
	begin 
		CLK = 1;
	end

	always 
	begin
		#100 CLK = 0;
		#100 CLK = 1;
	end
		
endmodule