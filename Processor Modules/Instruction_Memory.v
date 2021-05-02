
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    July 2020 
// Module Name:    Instruction_Memory 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Instruction_Memory(instruction_address, instruction);

output [31:0] instruction;
input  [4:0]  instruction_address;

reg [31:0] memory [0:31];

//assign memory[0] = 32'b001000_00000_00010_0000000000000111;	// R2 <- 7
//assign memory[1] = 32'b000011_00000000000000000000000011;		// jal 3
//assign memory[2] = 32'b000000_10001_00010_00011_00000_011000;	// R3 <- R17 + R2 
//assign memory[3] = 32'b001000_00000_10001_0000000000000100;	// R17 <- 4
//assign memory[4] = 32'b000000_11111_00000_00000_00000_001000;	// jr $ra


//assign memory[0] = 32'b001000_00000_00001_0000000000000011; 	// R1 <- 3
//assign memory[1] = 32'b001000_00000_00010_0000000000000111; 	// R2 <- 3
//assign memory[2] = 32'b000010_00000000000000000000000000; 	// jump to ins[0]

//assign memory[0] = 32'b001000_00000_00001_0000000000000011; 	// R1 <- 3
//assign memory[1] = 32'b001000_00000_00010_0000000000000111; 	// R2 <- 3
//assign memory[2] = 32'b000000_00001_00010_00011_00000_011000;	// R3 <- R1+ R2

//assign memory[0] = 32'b001000_00000_00010_0000000000000111; 	// R2 <- 7
//assign memory[1] = 32'b001000_00000_10001_0000000000000100; 	// R17 <- 4
//assign memory[2] = 32'b101011_10001_00010_0000000000000000; 	// 7-> mem[4] 
//assign memory[3] = 32'b100011_10001_00001_0000000000000000; 	// R1 <- mem[4]
//assign memory[4] = 32'b000000_00001_00010_00011_00000_011000; // R3 <- R1 + R2

//assign memory[0] = 32'b001000_00000_00010_0000000000000111; 	// R2 <- 7
//assign memory[1] = 32'b001000_00000_10001_0000000000000100; 	// R17 <- 4
//assign memory[2] = 32'b101011_10001_00010_0000000000000000; 	// 7-> mem[4] 
//assign memory[3] = 32'b100011_10001_00001_0000000000000000; 	// R1 <- mem[4]
//assign memory[4] = 32'b000100_00001_00010_1111111111111100; 	// if R1 = R2 ? jump to ins[1]

//assign memory[0] = 32'b001000_00000_00001_0000000000000011; 	// addi R1, R0, 3
//assign memory[1] = 32'b001000_00000_00010_0000000000000011; 	// addi R2, R0, 3
//assign memory[2] = 32'b000000_00001_00010_00011_00000_011000; // add R3, R1, R2
//assign memory[3] = 32'b101011_00001_00010_0000000000001010;  	// sw R1, 10(R2)
//assign memory[4] = 32'b100011_00010_00001_0000000000001010; 	// lw R2, 10(R1)
//assign memory[5] = 32'b000100_00001_00010_0000000000010100; 	// beq R1, R2, 20

initial
begin  
	$readmemb("instruction.mem",memory,0);
end  

assign instruction = memory[instruction_address];

endmodule 
