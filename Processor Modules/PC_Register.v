
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    July 2020 
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
