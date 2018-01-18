module compNPO(input [7:0] K, N, output LE);
	assign LE = K<=N ? 1'b1 : 1'b0;
endmodule