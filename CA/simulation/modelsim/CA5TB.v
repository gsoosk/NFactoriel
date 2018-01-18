`timescale 1ps/1ps
module FactTB();
	wire done ;
	reg start = 0;
	reg rst = 0;
	reg clk = 0;
	reg [7:0]nBus = 8'd3;
	wire [31:0]nfBus;
	Fact unit(done, start, rst, clk, nBus, nfBus);
	initial repeat(3000) #(30) clk = ~clk; 
	initial begin
		#5 rst = 1;
		#120 rst = 0;
		#100 start = 1;
		#100 start = 0;
	end
		
endmodule