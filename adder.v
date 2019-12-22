module adder(a,b,out);
	parameter size = 64;
	input [size - 1:0] a;
	input [size - 1:0] b;
	output [size - 1:0] out;

	assign out = a+b ;
endmodule