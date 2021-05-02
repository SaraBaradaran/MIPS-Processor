
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    July 2020 
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
