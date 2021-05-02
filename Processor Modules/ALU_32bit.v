
//////////////////////////////////////////////////////////////////////////////////
//	   
// Creator Name:   Sara Baradaran
// Create Date:    July 2020 
// Module Name:    ALU_32bit 
// Project Name:   MIPS Microprocessor 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU_32bit(control, in1, in2, out, zero, clk);

input clk;
input [31:0] in1, in2;
input [3:0]  control;
output[31:0] out;
output zero;

reg  [31:0] out;
wire [31:0] res;

assign zero = (in1 == in2);

assign res = calculator(in1, in2);

always @(posedge clk)
begin
	out <= res;
end

function [31:0]min;

	input [31:0] in1, in2;
	begin
		min = (in1 < in2) ? in1 : in2;

	end
	
endfunction 

function [31:0] calculator;

	input [31:0] in1, in2;
	begin
		case(control)
			6'b000000 : calculator = in1 & in2;
			6'b000001 : calculator = in1 | in2;
			6'b000010 : calculator = in1 + in2;
			6'b000110 : calculator = in1 - in2;
			6'b000111 : calculator = min(in1, in2);
			6'b001100 : calculator =  ~(in1 | in2);
			default : calculator = 0;
		endcase
	end

endfunction

endmodule
