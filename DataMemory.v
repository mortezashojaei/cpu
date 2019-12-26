
 
module Datamemory (
input wire [63:0] adr,          // Memory Address
input wire [63:0] datain,    // Memory Address Contents
input wire w, r,
input wire clk,                  // All synchronous elements, including memories, should have a clock signal
output [63:0] dataout      
);

reg [7:0] MEMO[0:255];

integer i;
initial
begin
	for( i = 0; i < 255; i = i + 1) 
		MEMO[i] = i;
end  

always @(posedge clk)
begin
		if(w == 1'b1) begin
			MEMO[adr + 7] <= datain[63:56];
			MEMO[adr + 6] <= datain[55:48];
			MEMO[adr + 5] <= datain[47:40];
			MEMO[adr + 4] <= datain[39:32];
			MEMO[adr + 3] <= datain[31:24];
			MEMO[adr + 2] <= datain[23:16];
			MEMO[adr + 1] <= datain[15:8];
			MEMO[adr]     <= datain[7:0];
		end

end

	assign dataout = (r) ? {
		MEMO[adr + 7],
		MEMO[adr + 6],
		MEMO[adr + 5],
		MEMO[adr + 4],
		MEMO[adr + 3],
		MEMO[adr + 2],
		MEMO[adr + 1],
		MEMO[adr]
	} : 64'bz;

endmodule 
