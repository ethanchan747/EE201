// ----------------------------------------------------------------------
// 	A Verilog module for a simple three_adder
//
// 	Written by Gandhi Puvvada  Date: 4/22/2011
//      File name:  three_adder.v
// ------------------------------------------------------------------------
module three_adder (X, Y);

input [7:0] X;

output [7:0] Y;

assign Y = X + 3;

endmodule  // three_adder