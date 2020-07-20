`timescale 1ns / 1ps

module RippleCarry_4bit(
						input [3:0] operand1, operand2,
						input Cin,
						output Cout,
						output [3:0] Result
    );

	wire [3:0] C;
	
	Full_Adder fa1 (.Sum(Result[0]), .Cout(C[0]), .A(operand1[0]), .B(operand2[0]), .Cin(Cin));
	
	Full_Adder fa[2:0] (.Sum(Result[3:1]), .Cout(C[3:1]), .A(operand1[3:1]), .B(operand2[3:1]), .Cin(C[2:0]));
	
	//carry out
	buf (Cout , C[3]);

endmodule
