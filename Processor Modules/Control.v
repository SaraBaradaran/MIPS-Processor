
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    21:55:26 10/26/2016 
// Module Name:    Control 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module Control(
    input [5:0] inst_in,
    output reg RegDst,
    output reg Branch,
    output reg MemRead,
    output reg MemtoReg,
    output reg [1:0] ALUop,
    output reg MemWrite,
    output reg ALUsrc,		
    output reg RegWrite,
    output reg Jump,
    output reg Jal,
    output reg Jr
    );
always @(*)
begin
   	if(inst_in == 6'b000000)//R_type
	begin
	RegDst = 1;
	ALUsrc = 0;
	MemtoReg = 0;
	RegWrite = 1;
	MemRead = 0;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 1;
	ALUop[0] = 0;
	Jump = 0;
	Jal = 0;
	Jr = 1;
	end
	
	else if(inst_in == 6'b100011)//load
	begin
	RegDst = 0;
	ALUsrc = 1;
	MemtoReg = 1;
	RegWrite = 1;
	MemRead = 1;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 0;
	ALUop[0] = 0;
	Jump = 0;
	Jal = 0;
	Jr = 0;
	end
	
	else if(inst_in == 6'b001000)//addi
	begin
	RegDst = 0;
	ALUsrc = 1;
	MemtoReg = 0;
	RegWrite = 1;
	MemRead = 1;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 0;
	ALUop[0] = 0;
	Jump = 0;
	Jal = 0;
	Jr = 0;
	end
	else if(inst_in == 6'b001100)//andi
	begin
	RegDst = 0;
	ALUsrc = 1;
	MemtoReg = 0;
	RegWrite = 1;
	MemRead = 1;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 1;
	ALUop[0] = 0;
	Jump = 0;
	Jal = 0;
	Jr = 0;
	end
	else if(inst_in == 6'b001101)//ori
	begin
	RegDst = 0;
	ALUsrc = 1;
	MemtoReg = 0;
	RegWrite = 1;
	MemRead = 1;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 1;
	ALUop[0] = 0;
	Jump = 0;
	Jal = 0;
	Jr = 0;
	end

	else if(inst_in == 6'b000100)//branch
	begin
	ALUsrc = 0;
	RegWrite = 0;
	MemRead = 0;
	MemWrite = 0;
	Branch = 1;
	ALUop[1] = 0;
	ALUop[0] = 1;
	Jump = 0;
	Jal = 0;
	Jr = 0;
	end

	else if(inst_in == 6'b000010)//jump
	begin
	ALUsrc = 0;
	RegWrite = 0;
	MemRead = 0;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 0;
	ALUop[0] = 0;
	Jump = 1;
	Jal = 0;
	Jr = 0;
	end
	else if(inst_in == 6'b101011) //save
	begin
	ALUsrc = 1;//
	RegWrite = 0;//
	MemRead = 0;//
	MemWrite = 1;//
	Branch = 0;//
	ALUop[1] = 0;
	ALUop[0] = 0;
	Jump = 0;//
	Jal = 0;
	Jr = 0;
	end 
	else if(inst_in == 6'b000011) //jal
	begin
	ALUsrc = 0;//
	RegWrite = 1;//
	MemRead = 0;//
	MemWrite = 0;//
	Branch = 0;//
	ALUop[1] = 0;//
	ALUop[0] = 0;//
	Jump = 0;//
	Jal = 1;
	Jr = 0;
	end 
	
end

endmodule
