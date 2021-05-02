
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    July 2020 
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
