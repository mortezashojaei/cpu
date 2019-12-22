module multiplexer(a,b,select,result);
	parameter size = 64;
    input [size -1:0] a;
    input [size -1:0] b;
    input select;
    output[size -1:0] result;
	
     assign result = (select)? b : a;
endmodule 