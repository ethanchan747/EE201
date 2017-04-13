`timescale 1ns / 1ps

module ee201_GCD_tb_Part1;
  
  // inputs
  reg Clk_tb;
  reg CEN;
  reg reset_tb;
  reg start_tb;
  reg ack_tb;
  reg [7:0] Ain;
  reg [7:0] Bin;
  // outputs
  wire [7:0] A, B, AB_GCD, i_count;
  wire q_I;
  wire q_Sub;
  wire q_Mult;
  wire q_Done;
  reg [6*8:0] state_string;
  
  integer clk_cnt, start_Clk_cnt, clocks_taken;
  
  ee201_GCD uut (
		.Clk(Clk_tb), 
		.CEN(CEN),
		.Reset(reset_tb), 
		.Start(start_tb), 
		.Ack(ack_tb), 
		.Ain(Ain), 
		.Bin(Bin), 
		.A(A),
		.B(B),
		.AB_GCD(AB_GCD), 
		.i_count(i_count),
		.q_I(q_I), 
		.q_Sub(q_Sub), 
		.q_Mult(q_Mult), 
		.q_Done(q_Done)
	);
	
	// generate clock
  initial begin
    Clk_tb = 0;
  end
  always begin
    #10;
    Clk_tb = ~Clk_tb;
  end
  
  initial begin
    clk_cnt = 0;
    start_Clk_cnt = 0;
    clocks_taken = 0;
  end
  always @ (posedge Clk_tb) begin
    clk_cnt = clk_cnt + 1;
  end
  always @ (posedge start_tb) begin
    start_Clk_cnt = clk_cnt;
  end
  always @ (posedge q_Done) begin
    clocks_taken = clk_cnt - start_Clk_cnt;
  end
  
  initial begin
    CEN = 1;
    reset_tb = 0;
    start_tb = 0;
    ack_tb = 0;
    Ain = 0;
    Bin = 0;
    #20;
    
    reset_tb = 1;
    #20;
    reset_tb = 0;
    #20;
    
    // test1: 24 and 36
    Ain = 24;
    Bin = 36;
    #20;
    
    start_tb = 1;
    #20;
    start_tb = 0;
    #20;
    
    wait (q_Done);
    #20;
    
    $display (
      "Ain=%d, Bin=%d, AB_GCD=%d",
      Ain, Bin, AB_GCD
    );
    $display (
      "clocks_taken=%d",
      clocks_taken
    );
    // end test1
    
    ack_tb = 1;
    #20;
    ack_tb = 0;
    #20;
    
    // test2: 5 and 15
    Ain = 5;
    Bin = 15;
    #20;
    
    start_tb = 1;
    #20;
    start_tb = 0;
    #20;
    
    wait (q_Done);
    #20;
    
    $display (
      "Ain=%d, Bin=%d, AB_GCD=%d",
      Ain, Bin, AB_GCD
    );
    $display (
      "clocks_taken=%d",
      clocks_taken
    );
    // end test2
    
    ack_tb = 1;
    #20;
    ack_tb = 0;
    #20;
    
    
    
  end
  
  
endmodule