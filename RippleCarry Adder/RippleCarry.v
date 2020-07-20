`timescale 1ns / 1ps

module RippleCarry(
						input [15:0] operand1, operand2,
						output Cout,
						output [15:0] Result
						);
	
	wire [15:0] C;
	
	//First adder could be a half adder or a full adder with cin = 0 .. i am gonna use half adder
	Half_Adder ha (.Sum(Result[0]), .Cout(C[0]), .A(operand1[0]), .B(operand2[0]));
	
	//next 15 adders are full adders
	Full_Adder fa[14:0] (.Sum(Result[15:1]), .Cout(C[15:1]), .A(operand1[15:1]), .B(operand2[15:1]), .Cin(C[14:0]));
	
	//Carry out
	buf (Cout , C[15]);

endmodule
