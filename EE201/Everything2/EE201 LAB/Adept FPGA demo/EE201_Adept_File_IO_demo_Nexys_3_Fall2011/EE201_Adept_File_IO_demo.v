/*
File     : ee201_Adept_file_io_demo.v 
Author   : Prasanjeet Das
Revision  : 
Date : 3/5/10, 3/6/10
Cleaned up by Gandhi Puvvada on 11/21/2011
reg [3:0] i; //internal counter // Gandhi 11/20/2011: Changed the counter from a 2-bit counter to 4-bit counter to make sure that the data captured is stable and valid
Also virtual I/O portion of the code is improved.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@ Description: The given module reads an input file containing 8-digit numbers (00000000 to 99999999).                                         @@
@@           NOTE 1: the input file has one number in each line so after each number there is a carriage return and line feed.                  @@
@@			 NOTE 2: Any file when given to Adept file i/o will be treated as containing ASCII characters hence it might look as a "0"          @@  
@@			         on the file but the Adept file i/o interface will read it as 30 (hex) which is the ASCII code for 0.                       @@
@@             The module converts the number to binary (or hex) format and stores it in a reverse order in an array of 16 32-bit registers.    @@
@@			   Why 32 bits??                                                                                                                    @@
@@			   Each digit will be stored in its binary form hence 8 x 4 = 32-bit is the width of the register array                             @@
@@             Then the module reads from the register file and writes the numbers back into an ASCII file using the Adept file io GUI.         @@
@@			 NOTE 4: Conversion from binary to ASCII is the reverse of conversion from ASCII to binary.                                         @@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

 /*
 ******* Important Aspects of design (For TA's references) *******
 ******* Taken from description used in EE560 (Prasanjeet and Gandhi)*******
   The Adept_File_IO_test project design goal is to demonstrate the operation of 
   file I/O tab in the adept GUI. We also use the Register I/O Tab.
   Here we have randomly chosen a few Epp data register addresses for 
   reading as well as for writing.
   
-- In this Adept_File_IO_test, we are using 16x32 register file and transfering 16 words (32-bit words) of information. 

-- In this design, the 16x32 register file is written at the location pointed
-- to by a 4-bit pointer (which is actually a register index), which is initialized to zero on reset. After writing to a location we increment 
-- the pointer. if we always send a 16 line file, at the end of writing all 16 words, the pointer
-- rolls over and again points to the beginning of the register file.

--   Name              		Epp     	Dir Explain
--                     		Address 
-- regVer(7 downto 0)       0x00        I/O returns the complement of written value -- This is for I/O Ex, in case we use it
-- data_P28      		    0x28    	data for deposition in register file
-- start_addr_P29       	0x29    	the load value for loading the pointer to register file

-- We need to implement an address register to capture the address (either 0x28 or 0x29) coming on
-- EppDB when EppAstb is active. Let us call it regEppAdr (in line with IOExpansion.v).

-- We will not actually need to implement any data registers called  data_P28 and start_addr_P29.

-- 
-- When we receive EppDstb with 0x29 in the address register (previously arranged), we will take the 
-- lower four bits of the data prevailing on EppDB and load it into the pointer (4-bit counter) (pointing to the register file).
-- Then (only after doing this), we will inactivate the handshake control signal EppWait.

-- Similarly, when we receive EppDstb with 0x28 in the address register (previously arranged), we will take the 
-- 8 bits of the data prevailing on EppDB and deposit in the 8-bit location of the register file (separate).
-- We will also increment the pointer.

********************************************
 
*/

//module declaration
//==============================================================================
module Adept_File_IO_demo (ClkPort, 
                           Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0,
						         Btn0, Btn1, Btn2, Btn3, 
						         Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6, Ld7,
			                  An0, An1, An2, An3,
			                  Ca, Cb, Cc, Cd, Ce, Cf, Cg, 
			                  Dp,
						         St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar,
			                  EppAstb, EppDstb, EppWr, EppDB, EppWait	// EPP communication signals	
						        );
						  
//port declarations

    /*  INPUTS */
	// Clock & Reset I/O
	input		ClkPort;	
	// Project Specific Inputs
	input		Btn0, Btn1, Btn2, Btn3;	
	input		Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0;
	
	
	/*  OUTPUTS */
	// ROM drivers 	
	output 	St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar;
	// Project Specific Outputs
	// LEDs
	output 	Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6, Ld7;
	// SSD Outputs
	output 	Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp;
	output 	An0, An1, An2, An3;	
	
	//io expansion ports
	 input			EppAstb, EppDstb, EppWr;
    inout [7:0]		EppDB;
    output			EppWait;
	
	/*  LOCAL SIGNALS */
	wire		Reset, ClkPort;
	wire		board_clk, sys_clk;
		
	//virtual I/O signals  //NOT REQUIRED FOR THIS DESIGN	
	
	wire  [7:0]	Led;		// 0x01       8 virtual LEDs on the PC I/O Ex GUI
    wire  [23:0] LBar;		// 0x02..4   24 lights on the PC I/O Ex GUI light bar
    reg [15:0] Sw;		// 0x05..6   16 switches, bottom row on the PC I/O Ex GUI
    reg [15:0] Btn;
    reg [31:0] dwOut;
	wire [31:0] dwIn;		// 0x0d..10  32 Bits user input
	
	//File i/o intermediate signals
	 reg [7:0] regEppAdr; //address register
    reg [7:0] regVer; //I/O returns the complement of written value
    reg [7:0] busEppInternal; //internal bus (before tristate)
  //------------------------------------------------------------------------------------------------------------------
    wire [3:0] Addr; // address going to user register file here it is 4 bits
    //reg We; // Write Enable, Read Enable; //control signals to user reg file
    reg [31:0] Data_to;
	 wire [31:0] Data_from; //data to be written to reg file
  //-----------------------------------------------------------------------------------------------------------------  
    reg [20:0] state;    //for the one hot state assignment
    reg [31:0] regarray [0:15]; //declaration of 16 x 32 bit register array
    reg [3:0] nibble_array [0:7]; // the 8 x 4 register array (nibble array) to manipulate bits (to manipulate the 8 nibbles)
  
  
  //state declarations
  localparam
  Idle            = 21'd1,       //idle state(1)
  A_Rd_finish     = 21'd2,       //finish reading from address register (2)
  A_Wr_start      = 21'd4,       //start writing to address register(3) 
  A_Wr_finish     = 21'd8,       //finish writing to address register(4)
  Other_Rd_finish = 21'd16,      //finish reading from other than pointer or register array (5)
  Other_Wr_finish = 21'd32,      //finish writing to other than pointer or register array   (6)
  Other_Wr_start  = 21'd64,      //start writing to other than pointer or register array     (7)
  Pntr_Rd_start   = 21'd128,     //start reading the pointer (8)						 
  Pntr_Rd_finish  = 21'd256,     //finish reading the pointer(9)
  Pntr_Wr_start   = 21'd512,     //start writing the pointer(10)
  Pntr_Wr_finish  = 21'd1024,    //finish writing the pointer(11)
  Rd_start_1_8    = 21'd2048,    //start reading register array (12)
  Rd_finish_1_8   = 21'd4096,    //finish reading register array(13)
  Rd_start_9_10   = 21'd8192,    //deals with carriage return and line feed (14)
  Rd_finish_9_10  = 21'd16384,   //deals with carriage return and line feed (15)
  Wr_start_1_8    = 21'd32768,   //start writing register file (16)
  Wr_finish_1_8   = 21'd65536,   //finish writing register array(17)
  Wr_start_9_10   = 21'd131072,  //deals with carriage return and line feed  (18)
  Wr_finish_9_10  = 21'd262144,  //deals with carriage return and line feed (19)
  Inc_nib_count   = 21'd524288,  //increment the nibble counter (20)
  Inc_mem_pntr    = 21'd1048576; //increment the mem_pointer (21)                   
                                           						 			
  // constant declarations 
  localparam
  addr_pointer = 8'b00101000, //40 dec - 28 hex
  addr_streamingReg = 8'b00101001; //41 dec - 29 hex

  //intermediate signal declarations
  wire En_A_rd, En_rd, En_A_wr, En_wr, En_pntr_rd, En_pntr_wr, En_other_rd; // all the read and write enable signals
  wire En_reg_wr, En_reg_rd; // read and write signals for register file (temporary)
  reg  Astb_S, Dstb_S, Astb_SS, Dstb_SS; //signals used for double synchronizing address and data strobe
  reg [7:0] D_int1, D_int2, D_int3; //signals used for registering the Eppdata
  reg [7:0] A_int1, A_int2, A_int3; //signals used for registering the EppAddress
  wire wait_Epp; // internal signal used for EppWait;
  reg [7:0] line_pointer; //line_pointer to register array
  reg [3:0] i; //internal counter // Gandhi 11/19/2011: Changed the counter from a 2-bit counter to 4-bit counter to make sure that the data captured is stable and valid
  reg [3:0] nib_count; //to count the nibbles
  reg [7:0] nib_on_file; //ASCII equivalent of the nibble to go into the file
  
  //intermediate signals for data conversion
  reg [3:0] BINARY, binary_in;
  reg [7:0] ASCII, ascii_out;

  
	
	
// Clk signal travels throughout our design,
// it is necessary to provide global routing to this signal. 
// The BUFGPs buffer the input ports and connect them to the global 
// routing resources in the FPGA.
	BUFGP BUFGP1 (board_clk, ClkPort); 	

	assign Reset = Btn3;
	
	// In this design, we run the core design at full 50MHz clock!
	assign	sys_clk = board_clk;
	
	// Disable the two memories on the board, since they are not used in this design
	assign {St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar} = {5'b11111};
    assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {8'b00000001}; //enable segments but not the dot point
	
    //assign switches to LED's (just like that)	
	assign {Ld7, Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0} = {Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0};
	assign {An0,An1,An2,An3} = {(Btn0),(Btn1),(Btn2),(Btn3)}; // when you press a button you blank off the digit
	
	//Virtual I/O signals -- unimportant here but provides a simple dummy assignments to be replaced with more meaningful assignments by the user
	assign dwIn = dwOut;
	assign Led = Btn[7:0];
	assign LBar = {Sw, Btn[15:8]};
	
	
	assign Addr = line_pointer[3:0]; //address to the register array
	
	// Epp signals
	// Port signals
	
	assign EppWait = wait_Epp;
        
	
	//bufif1 EppDB_buf(EppDB, busEppInternal, EppWr);
	assign EppDB = EppWr ? busEppInternal : 8'bZ ; // note: EppWr is active low!
	
	
	always @(*) // for busEppInternal
	begin
		if (En_A_rd)
			busEppInternal = regEppAdr;
		else if (En_rd)
		    busEppInternal = nib_on_file; //this is nibble (in ASCII form) being outputted to file
		else if (En_pntr_rd)
		    busEppInternal = line_pointer;
		else if (En_other_rd)
			begin
				case (regEppAdr) 
					'h00: 		busEppInternal = ~(regVer); // Digilent expects opposite of waht was written to the location 'h00 to be returned when read to verify that the Epp logice is implemented for Virtual I/O (from IOExpansion.vhd)
					'h01: 		busEppInternal = Led;
					'h02: 		busEppInternal = LBar[7:0];
					'h03: 		busEppInternal = LBar[15:8];
					'h04: 		busEppInternal = LBar[23:16];
					'h0d: 		busEppInternal = dwIn[7:0];
					'h0e: 		busEppInternal = dwIn[15:8];
					'h0f:		busEppInternal = dwIn[23:16];
					default:	busEppInternal = dwIn[31:24]; // i.e for regEppAdr == 'h10
				endcase
			end
		else
			busEppInternal = ~(regVer); // Default assignment to avoid latches on busEppInternal
	end
    
    //output function logic
	  assign En_A_rd = (state == A_Rd_finish)? 1'b1: 1'b0;
	  assign En_other_rd =(state == Other_Rd_finish)? 1'b1 : 1'b0;
	  // assign En_reg_rd = 1'b1; //always read the register file  // actually not used
	  assign En_reg_wr = ((state == Wr_start_1_8) ||( state == Wr_finish_1_8))? 1'b1: 1'b0;
	  assign En_rd  = ((state == Rd_start_1_8)|| (state == Rd_finish_1_8)) || ((state == Rd_start_9_10) || (state == Rd_finish_9_10)) ? 1'b1: 1'b0;
	  assign En_pntr_rd = (state == Pntr_Rd_start) || (state == Pntr_Rd_finish)? 1'b1: 1'b0;
	  // assign En_A_wr = (state == A_Wr_start)||( state == A_Wr_finish)? 1'b1: 1'b0;
	  assign En_wr = (state == Wr_start_9_10)||( state == Wr_finish_9_10)? 1'b1: 1'b0;
	  // assign En_pntr_wr = (state == Pntr_Wr_start) || (state == Pntr_Wr_finish) ? 1'b1 :1'b0;
	  
      assign wait_Epp =    (
								(state == Idle)||
								(state == A_Wr_start) || 
								(state == Wr_start_1_8)||
								(state == Wr_start_9_10)||
								(state == Rd_start_1_8) ||
								(state == Rd_start_9_10) || 
								(state == Pntr_Wr_start)||
								(state == Pntr_Rd_start) ||
						        (state == Other_Wr_start)
						    )? 1'b0 : 1'b1;  //active low signal
	
    always @(*) // for nibble on file
	  begin	
	    case(nib_count)
	         'h8: nib_on_file = 'h0D; //carriage return --0D
			   'h9: nib_on_file = 'h0A; //line feed --0A
		 default: nib_on_file = ascii_out; //the nibble being read from register array
		endcase
	  end
	  
	  
	  //**********************************************************************
	  always @(*) //for binary to ASCII converter
		begin
		  case(BINARY)
		   'h0: ascii_out = 'h30;
		   'h1: ascii_out = 'h31;
		   'h2: ascii_out = 'h32;
		   'h3: ascii_out = 'h33;
		   'h4: ascii_out = 'h34;
		   'h5: ascii_out = 'h35;
		   'h6: ascii_out = 'h36;
		   'h7: ascii_out = 'h37;
		   'h8: ascii_out = 'h38;
		   'h9: ascii_out = 'h39;
		   default: ascii_out = 'h30;
		  endcase
		end
   	//**************************************************************************
      
     //**********************************************************************
	  always @(*) //for ASCII to binary converter
		begin
		  case(ASCII)        
           'h30: binary_in = 'h0;
		   'h31: binary_in = 'h1;
		   'h32: binary_in = 'h2;
		   'h33: binary_in = 'h3;
		   'h34: binary_in = 'h4;
		   'h35: binary_in = 'h5;
		   'h36: binary_in = 'h6;
		   'h37: binary_in = 'h7;
		   'h38: binary_in = 'h8;
		   'h39: binary_in = 'h9;
		   default: binary_in = 'h0;
		  endcase
		end
	//**************************************************************************
	
	//****************************************************************************
	always @(*) //for writing to file in reverse nibble by nibble
	begin
	     case(nib_count)
		   'h7: BINARY = Data_from[31:28];
		   'h6: BINARY = Data_from[27:24];
		   'h5: BINARY = Data_from[23:20];
		   'h4: BINARY = Data_from[19:16];
		   'h3: BINARY = Data_from[15:12];
		   'h2: BINARY = Data_from[11:8];
		   'h1: BINARY = Data_from[7:4];
		   default: BINARY = Data_from[3:0];
		 endcase
	end
	//*******************************************************************************
	  
	//*******************************************************************
	//to write to the temporary register file
	always @(posedge sys_clk)
	begin
	   if(En_reg_wr)
	     nibble_array[nib_count] <= binary_in;
	end
	//********************************************************************
	 //to write to the target register file
	 always @(posedge sys_clk)
	 begin
	   if(En_wr)
	     regarray[Addr]<= Data_to;
	end
	//***********************************************************************
	//reading from the target register file
	assign Data_from = regarray[Addr[3:0]]; //reading continuously
	
	// Epp signals
  // Port signals
   assign EppWait = wait_Epp;
   
   //for double synchronizing to safeguard against metastability
   //###########################################################
   always @(posedge sys_clk, posedge Reset)
	begin: double_sync
	   if (Reset)
	    begin
	     Astb_S  <= 1'b1; Dstb_S  <= 1'b1; 
		 Astb_SS <= 1'b1; Dstb_SS <= 1'b1;
		end
	   else
	    begin
	     Astb_S  <= EppAstb;
	     Astb_SS <= Astb_S;
		 Dstb_S  <= EppDstb;
		 Dstb_SS <= Dstb_S;
	    end
    end
  //##############################################################	
  
  
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  //the state machine begins here
  always @(posedge sys_clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
         state <= Idle;
	      i <= 4'bxxxx;    
	     line_pointer <= 0; 
         nib_count <= 0;		 
         D_int1 <= 8'bxxxxxxxx;
		   D_int2 <= 8'bxxxxxxxx;
		   D_int3 <= 8'bxxxxxxxx;
		   A_int1 <= 8'bxxxxxxxx;
		   A_int2 <= 8'bxxxxxxxx;
		   A_int3 <= 8'bxxxxxxxx;
		   ASCII  <= 8'bxxxxxxxx;
         regVer <= 8'bxxxxxxxx;
         regEppAdr <= 8'bxxxxxxxx;		
	      
       end
    else
       begin
         (* full_case, parallel_case *)
         case (state)
	        Idle	: 
	          begin
		         // CU transitions
		        if(~Astb_SS) 
			      begin
				        if(~EppWr) // if it is an address write
				          state <= A_Wr_start;
				        else  // if it is an address read
                          state <= A_Rd_finish;
                  end					
			   else
			    begin
			         if(~Dstb_SS)
				        begin
                         if(~EppWr) // if it is a data write
				                begin
				                     if(regEppAdr == addr_streamingReg)
					                    if((nib_count == 4'b1001)||(nib_count == 4'b1000))
				                           state <= Wr_start_9_10;
					                    else
                                           state <= Wr_start_1_8;
			                        else
				                        if(regEppAdr == addr_pointer)
					                       state <= Pntr_Wr_start;
				                        else
                                           state <= Other_Wr_start;	  
        		                end	 
                         else  // if it is a data read
				               begin
                               if(regEppAdr == addr_streamingReg)
					                    
					                    if((nib_count == 4'b1001)||(nib_count == 4'b1000))
				                            state <= Rd_start_9_10;
					                    else
                                        state <= Rd_start_1_8;	 
					                else
					                    if(regEppAdr == addr_pointer)
					                       state <= Pntr_Rd_start;
					                    else
						                    state <= Other_Rd_finish;	
 					           end 
                      end	
                    else						
                        if (Astb_SS & Dstb_SS) // These two lines are not necessary as we are already in the Idle state.
				              state <= Idle;
		        end
		            
               //DPU RTL				
				   i <= 0;   
	        end
	       
	      A_Rd_finish:
			  begin	
            //CU state transitions
				if (Astb_SS)
				   state <= Idle;       
            //DPU RTL
            i <= 0;  
           end				
            
	      A_Wr_start:
            begin          
                // CU state transitions  
		      if ( i == 4'b1111)
				   state <= A_Wr_finish;
                // DPU RTL
			      i <= i + 1'b1;
				   A_int1 <= EppDB;
		         A_int2 <= A_int1;
		         A_int3 <= A_int2;
			      regEppAdr <= A_int3;
            end
		  A_Wr_finish:
		     begin		
             //CU state transitions
			   if (Astb_SS)
				 state <= Idle;
		       //DPU RTL
             A_int1 <= EppDB;
		       A_int2 <= A_int1;
		       A_int3 <= A_int2;
			    regEppAdr <= A_int3;
			  end	  
		  Other_Rd_finish:
           begin            
               //CU state transitions  
		        if ( Dstb_SS)
				    state <= Idle;
               //DPU RTL
				   //NO DPU RTL 
		     end		
	      Other_Wr_start:
		     begin
               //CU state transitions  
		        if ( i == 4'b1111)
				   state <= Other_Wr_finish;
               //DPU RTL
			       i <= i + 1'b1;
				    D_int1 <= (EppDB);  
		          D_int2 <= D_int1;
		          D_int3 <= D_int2;  

				case (regEppAdr) 
					'h00: 		regVer <= D_int3;
					'h05: 		Sw[7:0] <= D_int3;
					'h06: 		Sw[15:8] <= D_int3;
					'h07: 		Btn[7:0] <= D_int3;
					'h08: 		Btn[15:8] <= D_int3;
					'h09: 		dwOut[7:0] <= D_int3;
					'h0a: 		dwOut[15:8] <= D_int3;
					'h0b: 		dwOut[23:16] <= D_int3;
					'h0c: 		dwOut[31:24] <= D_int3;					
				endcase

				  
			  end		  	
			  
		  Other_Wr_finish:
		     begin
               //CU state transitions
				   if (Dstb_SS)
				     state <= Idle;
		         //DPU RTL
                   D_int1 <= (EppDB); 
		             D_int2 <= D_int1;
		             D_int3 <= D_int2;    
				case (regEppAdr) 
					'h00: 		regVer <= D_int3;
					'h05: 		Sw[7:0] <= D_int3;
					'h06: 		Sw[15:8] <= D_int3;
					'h07: 		Btn[7:0] <= D_int3;
					'h08: 		Btn[15:8] <= D_int3;
					'h09: 		dwOut[7:0] <= D_int3;
					'h0a: 		dwOut[15:8] <= D_int3;
					'h0b: 		dwOut[23:16] <= D_int3;
					'h0c: 		dwOut[31:24] <= D_int3;					
				endcase

			 end		
			 
		  Pntr_Rd_start:
		     begin
               //CU state transitions  
		         if ( i == 4'b1111)
				     state <= Pntr_Rd_finish;
               //DPU RTL
			        i <= i + 1'b1;
		     end		  
          Pntr_Rd_finish:
             begin
		      //CU state transitions  
		        if ( Dstb_SS)
				   state <= Idle;          
              //DPU RTL
			    //NO DPU RTL
             end
          Pntr_Wr_start:
             begin           
              //CU state transitions  
		        if ( i == 4'b1111)
				   state <= Pntr_Wr_finish;                        
              //DPU RTL
			        i <= i + 1'b1;
				     D_int1 <= EppDB;
		           D_int2 <= D_int1;
		           D_int3 <= D_int2;
				     line_pointer <= D_int3;
             end
          Pntr_Wr_finish:
             begin           
               //CU state transitions  
		       if (Dstb_SS)
				   state <= Idle;                        
               //DPU RTL
				   D_int1 <= EppDB;
		         D_int2 <= D_int1;
		         D_int3 <= D_int2;
				   line_pointer <= D_int3;	
             end
          Rd_start_1_8:
             begin
		        //CU state transitions  
		        if ( i == 4'b1111)
				    state <= Rd_finish_1_8;                    
                //DPU RTL
			       i <= i + 1'b1;
			    end 	
          Rd_finish_1_8:
		      begin 
		        //CU state transitions  
		        if( Dstb_SS)
				    state <= Inc_nib_count;        
                //DPU RTL
			      //NO DPU RTL
            end
          Rd_start_9_10:
             begin
		        //CU state transitions  
		        if ( i == 4'b1111)
				    state <= Rd_finish_9_10;
                //DPU RTL
			        i <= i + 1'b1;
			    end	
          Rd_finish_9_10:
             begin
		        //CU state transitions  
		        if ( Dstb_SS)
				   state <= Inc_nib_count;        
                //DPU RTL
			      //NO DPU RTL
			  end	  
          Wr_start_1_8:
             begin                          
              //CU state transitions  
		       if ( i == 4'b1111)
				  state <= Wr_finish_1_8;
              //DPU RTL
			      i <= i + 1'b1;
				   D_int1 <= EppDB;
		         D_int2 <= D_int1;
		         D_int3 <= D_int2; 
				   ASCII <= D_int3; //the data read from the file
             end
          Wr_finish_1_8:
             begin           
               //CU state transitions  
		         if(Dstb_SS) 
				     state <= Inc_nib_count;
               //DPU RTL
				   D_int1 <= EppDB;
		         D_int2 <= D_int1;
		         D_int3 <= D_int2; 
				   ASCII <=  D_int3; //the data read from the file
             end

          Wr_start_9_10:
             begin
                //CU state transitions  
		        if ( i == 4'b1111)
				   state <= Wr_finish_9_10;            
                //DPU RTL
			      i <= i + 1'b1;
				   Data_to <= {nibble_array[0],nibble_array[1],nibble_array[2],nibble_array[3],nibble_array[4],nibble_array[5],nibble_array[6],nibble_array[7]}; // notice that the 8-digit number is written in reverse order -- This just for the Demo
             end
	      Wr_finish_9_10:
             begin           
               //CU state transitions  
		         if(Dstb_SS) 
				    state <= Inc_nib_count;						 
			      //DPU RTL
				    Data_to <= {nibble_array[0],nibble_array[1],nibble_array[2],nibble_array[3],nibble_array[4],nibble_array[5],nibble_array[6],nibble_array[7]};
		     end
          Inc_nib_count:
             begin
		      //CU state transitions 
               if(nib_count < 4'b1001)			 
		         state <= Idle;
			   else
                 state <= Inc_mem_pntr;				            
              //DPU RTL
			     nib_count <= nib_count + 1'b1;
             end 
          Inc_mem_pntr:
		     begin
		       //CU state transitions			
		         state <= Idle;        
               //DPU RTL
			     line_pointer <= line_pointer + 1'b1;
			     nib_count <= 0;
			 end
		  default: state <= Idle;			
			  
		endcase
		
	  end
 end

endmodule
