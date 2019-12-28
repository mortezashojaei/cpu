`default_nettype none
`timescale 1ns/10ps

`include "clock.v"
`include "pc.v"


module cpu;
	
	wire clk;
  reg pc_reset;
  wire [63:0]oldpc;
  wire [63:0]newpc;

	clock clock1(clk);
	pc pc1(clk,pc_reset,newpc,oldpc);


	initial 
  	begin
      		$dumpfile("cpu.vcd");
      		$dumpvars(0, cpu);
      		#200 ;
      		$finish;
  	end 
 endmodule
