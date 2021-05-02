
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    July 2020 
// Module Name:    PC_Clk 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module PC_Clk(clk_in, clk_out);

input  clk_in;
output clk_out;

reg [1:0] ctr = 0;

always @(posedge clk_in)
begin

	ctr <= ctr + 1;
end

assign clk_out = (ctr <= 1) ? 1 : 0;

endmodule 
