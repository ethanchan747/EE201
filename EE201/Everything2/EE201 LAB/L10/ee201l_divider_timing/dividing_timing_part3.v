// ----------------------------------------------------------------------
//  A Verilog module for a simple divider
//
//  Written by Gandhi Puvvada  Date: 7/17/98, 2/15/2008
//
//  File name:  divider_timing_part2.v
// ------------------------------------------------------------------------
module divider_timing (Xin, Yin, Start, Ack, Clk, Reset, 
                Done, Quotient, Remainder);

input [3:0] Xin, Yin;
input Start, Ack, Clk, Reset;
output Done;
output [3:0] Quotient, Remainder;


reg [3:0] Quotient;  // Remainder is a wire by default
reg [3:0] x, y;
reg [2:0] state;

localparam
INITIAL = 3'b001,
COMPUTE	= 3'b010,
DONE_S	= 3'b100;

always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
            state       <= INITIAL;
            x           <= 4'bXXXX;     
            y           <= 4'bXXXX;     
            Quotient    <= 4'bXXXX;     // to avoid recirculating mux controlled by Reset
       end
    else
       begin
         (* full_case, parallel_case *)
         case (state)
            INITIAL : 
              begin
                  // state transitions in the control unit
                  if (Start)
                      state <= COMPUTE;
                  // RTL operations in the Data Path 
                      x <= Xin;
                      y <= Yin;
                      Quotient <= 0;
              end
            COMPUTE :
              begin : compute
						reg [3:0] x_temp, Quo_temp;
						integer I;
				  
                 // state transitions in the control unit
                  if (x < y)
                      state <= DONE_S;
                  // RTL operations in the Data Path
						x_temp = x;
						Quo_temp = Quotient;
						
						x_temp = x;
						Quo_temp = Quotient;
						for (I = 1; I <= 7; I = I+1) begin
							if (x_temp >= y) begin
								x_temp = x_temp - y;
								Quo_temp = Quo_temp + 1;
							end
						end
                  
						x <= x_temp;
                  Quotient <= Quo_temp;
              end 
            DONE_S  :
              begin  
                  // state transitions in the control unit
                  if (Ack)
                      state <= INITIAL;
                  // In DONE_S state, there are no RTL operations in the Data Path 
              end    
      endcase
    end 
  end
 
assign Remainder = x;
assign Done = (state == DONE_S) ;

endmodule  // divider_timing
