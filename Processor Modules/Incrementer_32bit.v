
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    Incrementer_32bit 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Incrementer_32bit(in, out);

input  [31:0] in;
output [31:0] out;

assign out = in + 1;

endmodule 