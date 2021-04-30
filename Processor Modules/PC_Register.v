
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    PC_Register 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module PC_Register(in, out, clk);

input  clk;
input  [31:0] in;
output [31:0] out;

reg [31:0] out = 0;

always @(posedge clk)
begin

	if(in || in == 0)
		out <= in;
end

endmodule 
