`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:11 10/01/2012 
// Design Name: 
// Module Name:    ee201_lumlock_sm 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ee201_lumlock_sm(Clk, reset, U, Z, Unlock, q_bad, q_opening, q_g1011, q_g1011get, q_g101, q_g101get, q_g10, q_g10get, q_g1, q_g1get, q_initial);
	input Clk,reset,U,Z;
	output Unlock;
	output q_bad, q_opening, q_g1011, q_g1011get, q_g101, q_g101get, q_g10, q_g10get, q_g1, q_g1get, q_initial;
	reg [10:0] state;
	
	assign { q_bad, q_opening, q_g1011, q_g1011get, q_g101, q_g101get, q_g10, q_g10get, q_g1, q_g1get, q_initial } = state;
	localparam
		qinitial		=	11'b00000000001,
		qg1get		=	11'b00000000010,
		qg1			=	11'b00000000100,
		qg10get		=	11'b00000001000,
		qg10			=	11'b00000010000,
		qg101get		=	11'b00000100000,
		qg101			=	11'b00001000000,
		qg1011get	=	11'b00010000000,
		qg1011		=	11'b00100000000,
		qopening		=	11'b01000000000,
		qbad			=	11'b10000000000;
	
	reg [25:0] Timerout_count;

	always @ (posedge Clk, posedge reset)
	begin
		if (reset)
			state <= qinitial;
		else
		begin
			case (state)
				qinitial:
					if ({U,Z} == 2'b10)
						state <= qg1get;
				qg1get:
					if (U == 0)
						state <= qg1;
				qg1:
					if ({U,Z} == 2'b01)
						state <= qg10get;
					else if (U == 1'b1)
						state <= qbad;
				qg10get:
					if (Z == 1'b0)
						state <= qg10;
				qg10:
					if ({U,Z} == 2'b10)
						state <= qg101get;
					else if (Z == 1'b1)
						state <= qbad;
				qg101get:
					if (U == 1'b0)
						state <= qg101;
				qg101:
					if ({U,Z} == 2'b10)
						state <= qg1011get;
					else if (Z == 1'b1)
						state <= qbad;
				qg1011get:
					if (U == 1'b0)
						state <= qg1011;
				qg1011:
					begin
					state <= qopening;
					Timerout_count <= 0;
					end
				qopening:
					begin
					Timerout_count <= Timerout_count + 1'b1;
					if (Timerout_count[25] == 1'b1)
						state <= qinitial;
					end
				qbad:
					if ({U,Z} == 2'b00)
						state <= qinitial;
				default:
					state <= qinitial;
			endcase
		end
	end
	
	assign Unlock = qopening;
endmodule
