
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    Register_Bank 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Register_Bank(read_register1, read_register2, write_register, write_data, read_data1, read_data2, reg_write, clk);

input clk, reg_write;
input [4:0]  read_register1, read_register2, write_register;
input [31:0] write_data;
output[31:0] read_data1, read_data2;

reg [31:0] zero_reg = 0;
reg [31:0] reg_32 [1:31];

always @(posedge clk)
begin

	if(reg_write && write_register != 0)
		reg_32[write_register] <= write_data;

end

assign read_data1 = (read_register1 == 0) ? zero_reg : reg_32[read_register1];
assign read_data2 = (read_register2 == 0) ? zero_reg : reg_32[read_register2];

endmodule
