`timescale 1ns / 1ps

module ee201_GCD_tb_Part3;
  
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
  integer a, b;
  
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
	
	integer file_descriptor_ID;
	
	initial begin
	file_descriptor_ID = $fopen("ee201_gcd_Part3_output.txt", "w");
	end
	
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
    
    for (a = 2; a <= 63; a = a + 1) begin
      for (b = 2; b <= 63; b = b + 1) begin
        APPLY_STIMULUS (a,b);
      end
    end
    
    $fclose(file_descriptor_ID);
    
  end  
  
  
  task APPLY_STIMULUS;
	 input [7:0] Ain_value;
	 input [7:0] Bin_value;
	 begin
	  Ain = Ain_value;
    Bin = Bin_value;
    #20;
    
    start_tb = 1;
    #20;
    start_tb = 0;
    #20;
    
    wait (q_Done);
    #20;
    
    $fdisplay (
      file_descriptor_ID,
      "Ain=%d, Bin=%d, AB_GCD=%d, clocks_taken=%d",
      Ain, Bin, AB_GCD, clocks_taken
    );
    
    ack_tb = 1;
    #20;
    ack_tb = 0;
    #20;  
	 end
	 endtask

  
endmodule