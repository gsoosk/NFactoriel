module compN(input [7:0] K, N, output L);
	assign L = K<N ? 1'b1 : 1'b0;
endmodule