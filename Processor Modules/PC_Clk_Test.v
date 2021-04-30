
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    PC_Clk_Test 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module PC_Clk_Test;

reg  clk_in;
wire clk_out;

PC_Clk ins1(clk_in, clk_out);

initial 
begin

	clk_in = 0;
	forever
		#5 clk_in = ~clk_in;
end

endmodule 
