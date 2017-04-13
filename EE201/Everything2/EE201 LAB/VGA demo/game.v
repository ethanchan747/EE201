`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// VGA verilog template
// Revision 0.01 - File Created
// Additional Comments: 
// Author:  Da Cheng
//////////////////////////////////////////////////////////////////////////////////
module pong_sm(ClkPort, vga_h_sync, vga_v_sync, vga_r, vga_g, vga_b, Sw0, Sw7, Btn0, Btn1, Btn2, Btn3,
	St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar,
	An0, An1, An2, An3, Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp,
	LD0, LD1, LD4, LD5, LD6, LD7);
	input ClkPort, Sw0, Btn0, Btn1, Btn2, Btn3, Sw7;
	output St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar;
	output vga_h_sync, vga_v_sync, vga_r, vga_g, vga_b;
	output An0, An1, An2, An3, Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp;
	output LD0, LD1, LD4, LD5, LD6, LD7;
	
	reg vga_r, vga_g, vga_b;
	
	//////////////////////////////////////////////////////////////////////////////////////////
	
	/*  LOCAL SIGNALS */
	wire			reset, ClkPort;
	wire			board_clk, clk, button_clk;
	
	
	//------------
	// CLOCK DIVISION

	// The clock division circuitary works like this:
	//
	// ClkPort ---> [BUFGP2] ---> board_clk
	// board_clk ---> [clock dividing counter] ---> DIV_CLK
	// DIV_CLK ---> [constant assignment] ---> sys_clk;
	BUF BUF1 (board_clk, ClkPort); 	
	BUF BUF2 (reset, Sw7);
	
	// Our clock is too fast (50MHz)
	// create a series of slower "divided" clocks
	// each successive bit is 1/2 frequency
	//reg [26:0]	DIV_CLK;
	reg [27:0]	DIV_CLK;
	always @ (posedge board_clk, posedge reset)  
	begin : CLOCK_DIVIDER
      if (reset)
			DIV_CLK <= 0;
      else
			// just incrementing makes our life easier
			DIV_CLK <= DIV_CLK + 1'b1;
	end	
	
	// pick a divided clock bit to assign to system clock
	// your decision should not be "too fast" 
	// or you will not see you state machine working
	assign	button_clk = DIV_CLK[18];
	assign	clk = DIV_CLK[1];

	assign {St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar} = {5'b11111};
	
	
	//////////////////////////////////////////////////////////
	
	wire inDisplayArea;
	wire [9:0] CounterX;
	wire [9:0] CounterY;

	hvsync_generator syncgen(.clk(clk), .reset(reset),.vga_h_sync(vga_h_sync), .vga_v_sync(vga_v_sync), .inDisplayArea(inDisplayArea), .CounterX(CounterX), .CounterY(CounterY));
	////////////////////////////////////////////////////////////////////////////////////////
	
	reg [9:0] position;
	
	always @(posedge DIV_CLK[21])
		begin
			if(reset)
				position<=4;
			else if(Btn0 && ~Btn1)
				position<=position+2;
			else if(Btn1 && ~Btn0)
				position<=position-2;
			
		end
	

	// 000 001 010 011 100 101 110 111 
	wire R = CounterY>=(position+8) && CounterY<=(position+64) && CounterX[8:5]==7;
	wire G = CounterX>100 && CounterX<200 && CounterY>100 && CounterY<200;
	wire B = CounterX>0 && CounterX<80 && CounterY>0 &&CounterY<30  || CounterX>630 && CounterX<640 && CounterY>430 &&CounterY<440;

	always @(posedge clk)
	begin
		vga_r <= R & inDisplayArea;
		vga_g <= G & inDisplayArea;
		vga_b <= B & inDisplayArea;
	end

	///////////////////////////////////////////////////////////////////////////////////
	//------------
	// SSD (Seven Segment Display)
	reg [3:0]	SSD;
	wire [3:0]	SSD0, SSD1, SSD2, SSD3;
	wire [1:0] ssdscan_clk;
	
	//Score
	reg [3:0] p2_score;
	reg [3:0] p1_score;
		
	assign SSD3 = 4'b1111;
	assign SSD2 = 4'b1111;
	assign SSD1 = 4'b1111;
	assign SSD0 = position[3:0];
	
	initial
	begin
		p2_score = 4'b0000;
		p1_score = 4'b0000;
	end
	
	
	// need a scan clk for the seven segment display 
	// 191Hz (50MHz / 2^18) works well
	assign ssdscan_clk = DIV_CLK[19:18];	
	assign An0	= !(~(ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 00
	assign An1	= !(~(ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 01
	assign An2	= !( (ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 10
	assign An3	= !( (ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 11
	
	
	always @ (ssdscan_clk, SSD0, SSD1, SSD2, SSD3)
	begin : SSD_SCAN_OUT
		case (ssdscan_clk) 
			2'b00:
					SSD = SSD0;
			2'b01:
					SSD = SSD1;
			2'b10:
					SSD = SSD2;
			2'b11:
					SSD = SSD3;
		endcase 
	end	
	
	
	// and finally convert SSD_num to ssd
	reg [6:0]  SSD_CATHODES;
	assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {SSD_CATHODES, 1'b1};
	// Following is Hex-to-SSD conversion
	always @ (SSD) 
	begin : HEX_TO_SSD
		case (SSD)		
			4'b1111: SSD_CATHODES = 7'b1111111 ; //Nothing 
			4'b0000: SSD_CATHODES = 7'b0000001 ; //0
			4'b0001: SSD_CATHODES = 7'b1001111 ; //1
			4'b0010: SSD_CATHODES = 7'b0010010 ; //2
			4'b0011: SSD_CATHODES = 7'b0000110 ; //3
			4'b0100: SSD_CATHODES = 7'b1001100 ; //4
			4'b0101: SSD_CATHODES = 7'b0100100 ; //5
			4'b0110: SSD_CATHODES = 7'b0100000 ; //6
			4'b0111: SSD_CATHODES = 7'b0001111 ; //7
			4'b1000: SSD_CATHODES = 7'b0000000 ; //8
			4'b1001: SSD_CATHODES = 7'b0000100 ; //9
			4'b1010: SSD_CATHODES = 7'b0001000 ; //10 or A
			default: SSD_CATHODES = 7'bXXXXXXX ; // default is not needed as we covered all cases
		endcase
	end	

	////////////////////////////////////////////////////////////////////////////////////

	`define QI 2'b00
	`define QGAME_INITIAL 2'b01
	`define QGAME 2'b10
	`define QDONE 2'b11

	reg [1:0] state;
	wire start;

	assign start = Sw0;

	wire LD0, LD1, LD4, LD5, LD6, LD7;
	assign LD0 = (p1_score == 4'b1010);
	assign LD1 = (p2_score == 4'b1010);
	assign LD4 = (state == `QDONE);
	assign LD5 = (state == `QGAME);
	assign LD6 = (state == `QGAME_INITIAL);
	assign LD7 = (state == `QI);

	//assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {1,1,1,1,1,1,1,1};

endmodule
