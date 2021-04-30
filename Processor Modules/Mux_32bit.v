
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    Mux_32bit 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux_32bit#(parameter N = 32)(in1, in2, select, out);

input  select;
input  [N-1:0] in1, in2;
output [N-1:0] out;

assign out = (select == 0) ? in1 : in2;

endmodule
