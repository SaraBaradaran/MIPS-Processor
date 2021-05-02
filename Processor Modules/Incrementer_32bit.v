
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    July 2020
// Module Name:    Incrementer_32bit 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Incrementer_32bit(in, out);

input  [31:0] in;
output [31:0] out;

assign out = in + 1;

endmodule 
