module Multi(input[7:0] Ain,input [31:0] Bin, output[31:0] Out);
	assign Out = Ain * Bin;
endmodule