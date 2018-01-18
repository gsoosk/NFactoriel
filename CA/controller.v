module controller(input start, LE, L, Zi, clk, rst ,output done,output reg init1, LdF, LdN, init1k, cen);
  parameter [2:0] IDLE = 3'b0, STARTING = 3'b001, LOADN = 3'b010, CHECK = 3'b011, INIT = 3'b100, CALC = 3'b101;
  reg [2:0] ps,ns;
  always @(start,L,Zi,LE) begin
    ns = 3'b0;
    case(ps)
      IDLE : ns = start ? STARTING : IDLE;
      STARTING : ns = start ? STARTING : LOADN;
      LOADN : ns = CHECK;
      CHECK : ns = (L == 0 | Zi == 1) ? INIT : CALC;
      INIT : ns = CALC;
      CALC : ns = LE ? CALC : IDLE;
      default : ns = IDLE;
    endcase
  end
	reg Done;
  always @(start,L,Zi,LE) begin
	 
	 Done=0;
	 init1=0; LdF=0; LdN=0; init1k=0; cen=0;
    case(ps)
      IDLE : Done=1;
      LOADN : LdN=1;
      INIT : begin init1=1; init1k=1; end
      default : begin Done=0; init1=0; LdF=0; LdN=0; init1k=0; cen=0; end
    endcase
  end
  assign done = Done;

  always @(posedge clk,posedge rst) begin
    if(rst) ps <= 3'b0;
    else ps <= ns;
  end
endmodule
