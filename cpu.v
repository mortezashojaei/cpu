`default_nettype none
`timescale 1ns/10ps

`include "clock.v"
`include "pc.v"
`include "adder.v"
`include "InstructionMemory.v"

module cpu;
	
	wire clk;
  reg pc_reset;
  wire [63:0]oldpc;
  wire [63:0]newpc;
  wire [31 : 0] instruction;

  wire [63 : 0] output_pc_adder;

initial 
begin
  
  pc_reset=1;
  
  #100 pc_reset =0;
end

	clock clock1(clk);
	pc pc1(clk,pc_reset,newpc,oldpc);
  adder adder1(oldpc,64'b100,output_pc_adder);
  InstructionMemory InstructionMemory1 (oldpc,instruction);


	initial 
  	begin
      		$dumpfile("cpu.vcd");
      		$dumpvars(0, cpu);
      		#200 ;
      		$finish;
  	end 
 endmodule
