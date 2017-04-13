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
				  reg [3:0] x_temp, x_temp1, x_temp2, x_temp3, Quo_temp, Quo_temp1, Quo_temp2, Quo_temp3;
				  
                 // state transitions in the control unit
                  if (x < y)
                      state <= DONE_S;
                  // RTL operations in the Data Path
						x_temp = x;
						Quo_temp = Quotient;
						
						x_temp1 = x_temp;
						Quo_temp1 = Quo_temp;
						if (x_temp >= y) begin
							x_temp1 = x_temp - y;
							Quo_temp1 = Quo_temp + 1;
						end
						
						x_temp2 = x_temp1;
						Quo_temp2 = Quo_temp1;
						if (x_temp1 >= y) begin
							x_temp2 = x_temp1 - y;
							Quo_temp2 = Quo_temp1 + 1;
						end
												
						x_temp3 = x_temp2;
						Quo_temp3 = Quo_temp2;
						if (x_temp2 >= y) begin
							x_temp3 = x_temp2 - y;
							Quo_temp3 = Quo_temp2 + 1;
						end
                  
						x <= x_temp3;
                  Quotient <= Quo_temp3;
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
