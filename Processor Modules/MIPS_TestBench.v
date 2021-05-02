
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    July 2020 
// Module Name:    MIPS_TestBench 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module MIPS_TestBench;

reg  clk;
wire [31:0] instruction;
wire [31:0] read_data1, read_data2, read_data, write_data;
wire [31:0] sign_out;
wire [31:0] ALU_in2, ALU_res, add_res;
wire [31:0] pc_out, inc_out, pc_in, jump_address;

wire RegDst, Branch, MemRead, MemtoReg, MemWrite, ALUsrc, RegWrite, Jump, Jal, Jr, zero;
wire [1:0] ALUop;
wire [4:0] write_register;
wire [3:0] control;
wire clk_out;

MIPS_CPU CPU(clk, instruction, read_data1, read_data2, read_data, write_data, sign_out, ALU_in2, ALU_res, add_res, pc_out, inc_out, pc_in, jump_address,
RegDst, Branch, MemRead, MemtoReg, MemWrite, ALUsrc, RegWrite, Jump, Jal, Jr, zero, ALUop, write_register, control, clk_out);

initial 
begin

	clk = 0;
	forever
		#5 clk = ~clk;
end

endmodule


