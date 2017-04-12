`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:34:41 10/01/2012
// Design Name:   ee201_lumlock_sm
// Module Name:   C:/Documents and Settings/Administrator/Desktop/Everything2/EE201 LAB/L6/ee201_lab6/ee201_numlock_sm_tb.v
// Project Name:  ee201_lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ee201_lumlock_sm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ee201_numlock_sm_tb;

	// Inputs
	reg Clk;
	reg reset;
	reg U;
	reg Z;

	// Outputs
	wire Unlock;
	wire q_bad;
	wire q_opening;
	wire q_g1011;
	wire q_g1011get;
	wire q_g101;
	wire q_g101get;
	wire q_g10;
	wire q_g10get;
	wire q_g1;
	wire q_g1get;
	wire q_initial;

	// Instantiate the Unit Under Test (UUT)
	ee201_lumlock_sm uut (
		.Clk(Clk), 
		.reset(reset), 
		.U(U), 
		.Z(Z), 
		.Unlock(Unlock), 
		.q_bad(q_bad), 
		.q_opening(q_opening), 
		.q_g1011(q_g1011), 
		.q_g1011get(q_g1011get), 
		.q_g101(q_g101), 
		.q_g101get(q_g101get), 
		.q_g10(q_g10), 
		.q_g10get(q_g10get), 
		.q_g1(q_g1), 
		.q_g1get(q_g1get), 
		.q_initial(q_initial)
	);


	initial begin 
		Clk = 0;
	end
	always
	begin
		#10 Clk = !Clk;
	end

	initial begin
		// Initialize Inputs
		reset = 0;
		U = 0;
		Z = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		reset = 1;
		#20;
		
		reset = 0;
		#20;
		
      U = 1; Z = 0;
		#20;
		
		U = 0; Z = 0;
		#20;
		
		U = 0; Z = 1;	
		#20;
		
		U = 0; Z = 0;
		#20;
		
		U = 1; Z = 1;// bad
		#20;
		
		U = 0; Z = 0;
		#20;
		
		U = 1; Z = 0;
		#200;
		
		U = 0; Z = 0;

	end
      
endmodule

