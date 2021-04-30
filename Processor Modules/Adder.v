
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    Adder 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Adder(in1, in2, out);

input [31:0] in1, in2;
output[31:0] out;

assign out = in1 + in2;

endmodule 
