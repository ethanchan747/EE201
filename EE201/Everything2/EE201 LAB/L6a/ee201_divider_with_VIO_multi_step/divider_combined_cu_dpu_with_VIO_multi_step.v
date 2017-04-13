// ----------------------------------------------------------------------
// 	A Verilog module for a simple divider
//
// 	Written by Gandhi Puvvada  Date: 7/17/98, 2/15/2008, 10/13/08, 2/22/2010
//
//      File name:  divider_combined_cu_dpu_with_VIO_multi_step.v
// ------------------------------------------------------------------------
// This file is essentially same as the divider_combined_cu_dpu.v except for 
// the following two aspects:
// 1. It is an 8-bit counter.
// 2. It has the MCEN additional input port pin which is used to multi-step 
// the divider in the compute state.
// Note the following lines later in the code:
//  	        COMPUTE	:
//			  if (MCEN)  // Notice SCEN
//	           begin
// ------------------------------------------------------------------------
module divider (Xin, Yin, Start, Ack, Clk, Reset, MCEN,  // Notice SCEN
				Done, Quotient, Remainder, Qi, Qc, Qd);

input [7:0] Xin, Yin;
input Start, Ack, Clk, Reset, MCEN; // Notice MCEN
output Done;
output [7:0] Quotient, Remainder;
output Qi, Qc, Qd;

reg [7:0] Quotient;  // Remainder is a wire by default
reg [7:0] X, Y;
reg [2:0] state;

localparam
INITIAL = 3'b001,
COMPUTE	= 3'b010,
DONE_S	= 3'b100;

assign {Qd, Qc, Qi} = state;

always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
        	state <= INITIAL;
	      X <= 8'bXXXX;        // to avoid recirculating mux controlled by Reset
	      Y <= 8'bXXXX;	   // to avoid recirculating mux controlled by Reset 
	      Quotient <= 8'bXXXX; // to avoid recirculating mux controlled by Reset
       end
    else
       begin
         (* full_case, parallel_case *)
         case (state)
	        INITIAL	: 
	          begin
		         // state transitions in the control unit
		         if (Start)
		           state <= COMPUTE;
		         // RTL operations in the Data Path 
		           X <= Xin;
		           Y <= Yin;
		           Quotient <= 8'b0;
	          end
	        COMPUTE	:
			  if (MCEN)  // Notice SCEN
	          begin
		         // state transitions in the control unit
		         if (X < Y)
		           state <= DONE_S;
		         // RTL operations in the Data Path 
		         if (!(X < Y))
		           begin
		             X <= X - Y;
		             Quotient <= Quotient + 1;
		           end
 	          end
	        DONE_S	:
	          begin  
		         // state transitions in the control unit
		         if (Ack)
		           state <= INITIAL;
		         // RTL operations in the Data Path 
		         // In DONE_S state, there are no RTL operations in the Data Path 
	          end    
      endcase
    end 
  end
 
assign Remainder = X;
assign Done = (state == DONE_S) ;

endmodule  // divider