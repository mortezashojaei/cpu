`default_nettype none
`timescale 1ns/10ps

`include "clock.v"

module cpu;
	
	wire clk;
	clock clock1(clk);
	parameter delay = 50;

	initial 
  	begin
      		$dumpfile("cpu.vcd");
      		$dumpvars(0, cpu);
      		#200 ;
      		$finish;
  	end 
 endmodule
