module superAnd(input [31:0] A, output B);
	assign B = ~|{A};
endmodule 