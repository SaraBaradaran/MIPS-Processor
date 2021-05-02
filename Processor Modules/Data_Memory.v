
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    July 2020 
// Module Name:    Data_Memory 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Data_Memory(address, read_data, write_data, mem_read, mem_write, clk);

input  clk, mem_read, mem_write;
input  [31:0] write_data;
input  [6:0]  address;
output [31:0] read_data;

reg [31:0] memory [0:127];
reg [31:0] read_data;

always @(posedge clk)
begin
	
	if(mem_read)
		read_data <= memory[address];
	if(mem_write)
		memory[address] <= write_data;

end

endmodule
