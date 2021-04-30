
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    Check_Equality 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Check_Equality(in1, in2, out);

input  [5:0] in1, in2;
output out;

assign out = (in1 == in2);

endmodule 