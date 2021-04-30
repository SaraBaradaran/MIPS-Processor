
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    MIPS_CPU 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module MIPS_CPU(

clk,
instruction,
read_data1, read_data2, read_data, write_data,
sign_out,
ALU_in2, ALU_res, add_res,
pc_out, inc_out, pc_in, jump_address,

RegDst, Branch, MemRead, MemtoReg, MemWrite, ALUsrc, RegWrite, Jump, Jal, Jr, zero,
ALUop,
write_register,
control, clk_out
);

input  clk;
output [31:0] instruction;
output [31:0] read_data1, read_data2, read_data, write_data;
output [31:0] sign_out;
output [31:0] ALU_in2, ALU_res, add_res;
output [31:0] pc_out, inc_out, pc_in, jump_address;

output RegDst, Branch, MemRead, MemtoReg, MemWrite, ALUsrc, RegWrite, Jump, Jal, Jr, zero;
output [1:0] ALUop;
output [4:0] write_register;
output [3:0] control;
output clk_out;

wire [31:0] add_mux_res;
wire [31:0] mem_mux_res, jump_mux_res;
wire [4:0]  ins_mux_res;

wire eq_out;

PC_Clk division_clk(.clk_in(clk), .clk_out(clk_out));

PC_Register pc(.in(pc_in), .out(pc_out), .clk(clk_out));

Sign_Extend sign_ex(.in(instruction[15:0]), .out(sign_out), .clk(clk));

Register_Bank registers(.read_register1(instruction[25:21]), .read_register2(instruction[20:16]), .write_register(write_register), .write_data(write_data), .read_data1(read_data1), .read_data2(read_data2), .reg_write(RegWrite), .clk(clk));

Mux_32bit mux9(.in1(jump_mux_res), .in2(read_data1), .select(Jr & eq_out), .out(pc_in));

Check_Equality eq(.in1(instruction[5:0]), .in2(6'b001000), .out(eq_out));

defparam mux1.N = 5;
Mux_32bit mux1(.in1(instruction[20:16]), .in2(instruction[15:11]), .select(RegDst), .out(ins_mux_res));

defparam mux7.N = 5;
Mux_32bit mux7(.in1(ins_mux_res), .in2(5'b11111), .select(Jal), .out(write_register));

Mux_32bit mux2(.in1(read_data2), .in2(sign_out), .select(ALUsrc), .out(ALU_in2));

ALU_32bit ALU(.control(control), .in1(read_data1), .in2(ALU_in2), .out(ALU_res), .zero(zero), .clk(clk));

Data_Memory data_mem(.address(ALU_res), .read_data(read_data), .write_data(read_data2), .mem_read(MemRead), .mem_write(MemWrite), .clk(clk));

Adder add_module(.in1(inc_out), .in2(sign_out), .out(add_res));

increment_32bit inc(.in(pc_out), .out(inc_out));

Control ctrl(.inst_in(instruction[31:26]), .RegDst(RegDst), .Branch(Branch), .MemRead(MemRead), .MemtoReg(MemtoReg), .ALUop(ALUop), .MemWrite(MemWrite), .ALUsrc(ALUsrc), .RegWrite(RegWrite), .Jump(Jump), .Jal(Jal), .Jr(Jr));

Instruction_Memory ins_mem(.instruction_address(pc_out), .instruction(instruction));

Mux_32bit mux3(.in1(ALU_res), .in2(read_data), .select(MemtoReg), .out(mem_mux_res));

mux_32bit_2 mux4(.in1(inc_out), .in2(add_res), .select(Branch & zero), .out(add_mux_res));

ALU_control ALU_ctrl(.ALU_op(ALUop), .inst(instruction[5:0]), .op(control));

Mux_32bit mux5(.in1(add_mux_res), .in2(jump_address), .select(Jump | Jal), .out(jump_mux_res));

Mux_32bit mux6(.in1(mem_mux_res), .in2(inc_out), .select(Jal), .out(write_data));

assign jump_address = {inc_out[31:26],instruction[25:0]};

endmodule 


