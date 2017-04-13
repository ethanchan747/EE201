// EE201L RTL Exercises
// largest_num_divisible_by_7.v
// Written by Suraj Abraham, Gandhi Puvvada 
// March 1, 2009, March 3, 2010

// Given an array of 16 unsigned 8-bit numbers, we need to find the largest non-zero
// number that is evenly divisible by 7. 

`timescale 1 ns / 100 ps

module largest_num_divisible_by_7 (Max, Start, Ack, Clk, Reset, 
				 Qi, Ql, Qdiv, Qdf, Qdnf);

input Start, Ack, Clk, Reset;
output [7:0] Max;
output Qi, Ql, Qdiv, Qdf, Qdnf;

reg [7:0] M [0:15]; 
reg [7:0] X;
reg [4:0] state;
reg [7:0] Max;
reg [3:0] I;

localparam 
INI = 	5'b00001, // "Initial" state
LD_X = 	5'b00010, // "Load X with the next M[I]" state
DIV = 	5'b00100, // "Divide X by 7 and Update Max if appropriate" state
D_F = 	5'b01000, // "Done Found largest number divisible by 7" state
D_NF = 	5'b10000 ;// "Done Not Found any non-zero number divisible by 7" state

         
         
assign {Qdnf, Qdf, Qdiv, Ql, Qi} = state;

always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
         state <= INI;
          I <= 4'bXXXX;
	      Max <= 8'bXXXXXXXX;
	      X <= 8'bXXXXXXXX;	   // to avoid recirculating mux controlled by Reset 
	    end
    else
       begin
         (* full_case, parallel_case *)
         case (state)
	        INI	: 
	          begin
		         // state transitions in the control unit
		         if (Start)
		           state <= LD_X;
		         // RTL operations in the Data Path            	              
		           Max <= 0;
		           I <= 0;
	          end
	        LD_X	:  // ** TODO **  complete RTL Operations and State Transitions
	          begin
		         // state transitions in the control unit
					if (M[I] > Max)
						state <= DIV;
					else if ((I == 15) && (Max != 0) && (M[I] <= Max))
						state <= D_F;
					else if ((I == 15) && (Max == 0) && (M[I] <= Max))
				 		state <= D_NF;

		       // RTL operations in the Data Path   
			
					X <= M[I];
				 if ( M[I] <= Max)
					I <= I + 1;
 	          end
	        
	        DIV :  // ** TODO **  complete RTL Operations and State Transitions
	          begin
	          // state transitions in the control unit
					
					if ( (X <= 7) && (I != 15))
						state <= LD_X;
					else if ( (X <= 7) && (I == 15) && (Max != 0 || X == 7))
						state <= D_F;
					else if ( (X <= 7) && ( I == 15) && (Max == 0 && X !=7 ))
					state <= D_NF;

	          // RTL operations in the Data Path
				 
					X <= X - 7;
					if (X == 7)
						Max <= M[I];
					if (X <= 7)
						I <= I + 1;
					end
			  
	        D_F	:
	          begin  
		         // state transitions in the control unit
		         if (Ack)
		           state <= INI;
		       end    
	        D_NF	:
	          begin  
		         // state transitions in the control unit
		         if (Ack)
		           state <= INI;
		       end    
      endcase
    end 
  end 
endmodule  

