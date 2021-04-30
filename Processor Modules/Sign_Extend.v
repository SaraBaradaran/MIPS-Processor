
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    Sign_Extend 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Sign_Extend(in, out, clk);

input  clk;
input  [15:0] in;
output [31:0] out;

reg [31:0] out;

always @(posedge clk)
begin

	if(in[15] == 1)
		out <= {{16{1'b1}}, in};
	else if(in[15] == 0)
		out <= {{16{1'b0}}, in};

end
endmodule 
