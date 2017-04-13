//////////////////////////////////////////////////////////////////////////////////
// Author:			Shideh Shahidi, Bilal Zafar, Gandhi Puvvada
// Create Date:   02/25/08, 10/13/08
// File Name:		ee201_GCD.v 
// Description: 
//
//
// Revision: 		2.1
// Additional Comments:  
// 10/13/2008 Clock Enable (CEN) has been added by Gandhi
//  3/1/2010  Signal names are changed in line with the divider_verilog design
//           `define is replaced by localparam construct
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module ee201_GCD(Clk, CEN, Reset, Start, Ack, Ain, Bin, A, B, AB_GCD, i_count, q_I, q_Sub, q_Mult, q_Done);

	/*  INPUTS */
	input	Clk, CEN, Reset, Start, Ack;
	input [7:0] Ain;
	input [7:0] Bin;
	
	// i_count is count of number of factors of 2	. We do not need an 8-bit counter. 
	// However, in-line with other variables, this has been made an 8-bit item.
	/*  OUTPUTS */
	// store the two inputs Ain and Bin in A and B . These (A, B) are also continuously output to the higher module. along with the AB_GCD
	output reg [7:0] A, B, AB_GCD, i_count;		// the result of the operation: GCD of the two numbers
	// store current state
	output q_I, q_Sub, q_Mult, q_Done;
	reg [3:0] state;	
	assign {q_Done, q_Mult, q_Sub, q_I} = state;
		
	localparam 	
	I = 4'b0001, SUB = 4'b0010, MULT = 4'b0100, DONE = 4'b1000, UNK = 4'bXXXX;
	
	// NSL AND SM
	always @ (posedge Clk, posedge Reset)
	begin 
		if(Reset) 
		  begin
			state <= I;
			i_count <= 8'bx;  	// ****** TODO ******
			A <= 8'bx;		  	// complete the 3 lines
			B <= 8'bx;
			AB_GCD <= 8'bx;			
		  end
		else				// ****** TODO ****** complete several parts
				case(state)	
					I:
					begin
						// state transfers
						if (Start) state <= SUB;
						// data transfers
						i_count <= 0;
						A <= Ain;
						B <= Bin;
						AB_GCD <= 1; //his code said 0
					end		
					SUB: 
		               if (CEN) //  This causes single-stepping the SUB state
						begin		
							// state transfers
							if (A == B) state <= (i_count == 0) ? DONE : MULT;
							// data transfers
							if (A == B) AB_GCD <= A; //added A		
							else if (A < B)
							  begin
								// swap A and B
								A <= B;
								B <= A; 
							  end
							else						// if (A > B)
							  begin
								case ( {B[0], A[0]} )
									2'b00: begin
										// B even, A even
										i_count <= i_count + 1;
										A <= A/2;
										B <= B/2;
									end
									2'b01: begin
										// B even, A odd
										B <= B/2;
									end
									2'b10: begin
										// B odd, A even
										A <= A/2;
									end
									2'b11: begin
										// B odd, A odd
										A <= A - B;
									end
									default: begin
										A <= 0;
										B <= 0;
									end
								endcase
							  end
						end
					MULT:
					  if (CEN) // This causes single-stepping the MULT state
						begin
							// state transfers
							if (i_count == 1) begin
								state <= DONE;
							end
							// data transfers
							AB_GCD <= AB_GCD*2;
							i_count <= i_count -1;
						end
					
					DONE:
						if (Ack)	state <= I;
						
					default:		
						state <= UNK;
				endcase
	end
		
	// OFL
	// no combinational output signals
	
endmodule
