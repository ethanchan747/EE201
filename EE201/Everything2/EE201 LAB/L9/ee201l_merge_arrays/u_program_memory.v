`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    20:42:20 03/26/2008 
// Design Name:    ee201l_merge_array
// Module Name:    u_program_memory 
// Description:    This is a 4-location deep, 2-bit wide ROM. 
// Comments: 
//            (1) Use this code as a template. Edit this code to create the 
//                Control ROM For the MCU of the desired depth and width. 
//            (2) Edit the contents and fill them with the micro-instructions. 
//            (3) Re-create the symbol (by selecting this Verilog file in the Source
//                pane and double-cliking "Create Schematic Symbol" under the "Design 
//                Utilities" in the Processes pane. 
//
//////////////////////////////////////////////////////////////////////////////////
module u_program_memory(addr,
								branch, done, csel, inc_I, inc_J, inc_K, clear, select_q, write_EN);

	input [2:0] addr;
	

	output [2:0] branch;
	output [2:0] csel;
	output inc_J;
	output inc_I;
	output inc_K;
	output done;
	output clear;
	output select_q;
	output write_EN;
	
	reg [12:0] data_out;
	
		 
   always @(addr)
	  begin  : u_program_memory_logic
         case (addr)
            3'b000:  data_out <= 13'b0000000000100;
            3'b001:  data_out <= 13'b1010010000000;
            3'b010:  data_out <= 13'b0010100101001;
            3'b011:  data_out <= 13'b0110110011011;
				3'b100:  data_out <= 13'b1111000000000;
				3'b101:  data_out <= 13'b0010110011011;
				3'b110:  data_out <= 13'b1100100101001;
				3'b111:  data_out <= 13'b1111011000000;
            default: data_out <= 13'bXX;
         endcase	 
	  end
	  
	  assign {branch [2:0], csel [2:0], done, inc_I, inc_J, inc_K, clear, select_q, write_EN} = data_out;

endmodule