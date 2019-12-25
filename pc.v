module pc(clk, rst, oldpc,newpc);
parameter size = 64;
input clk;
input rst;
input [size-1:0] oldpc;
output reg [size-1:0] newpc;

always @(posedge clk)
begin
if(rst)
	newpc<=0;
else
	newpc <= oldpc;
end
endmodule
