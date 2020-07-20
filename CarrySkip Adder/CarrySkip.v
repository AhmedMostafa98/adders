`timescale 1ns / 1ps

module CarrySkip(
						input [15:0] operand1, operand2,
						output Cout,
						output [15:0] Result
    );
	 
	 wire [3:0] cin, cout;
	 
	RippleCarry_4bit RC_1 (.operand1(operand1[3:0]), .operand2(operand2[3:0]), .Cout(cout[0]), .Result(Result[3:0]), .Cin(0));
	SkipLogic SL_1 (.A(operand1[3:0]), .B(operand2[3:0]), .Cin(0), .Cout(cout[0]), .CinNext(cin[0]));
	
	RippleCarry_4bit RC_2 (.operand1(operand1[7:4]), .operand2(operand2[7:4]), .Cout(cout[1]), .Result(Result[7:4]), .Cin(cin[0]));
	SkipLogic SL_2 (.A(operand1[7:4]), .B(operand2[7:4]), .Cin(cin[0]), .Cout(cout[1]), .CinNext(cin[1]));
	
	RippleCarry_4bit RC_3 (.operand1(operand1[11:8]), .operand2(operand2[11:8]), .Cout(cout[2]), .Result(Result[11:8]), .Cin(cin[1]));
	SkipLogic SL_3 (.A(operand1[11:8]), .B(operand2[11:8]), .Cin(cin[1]), .Cout(cout[2]), .CinNext(cin[2]));
	
	RippleCarry_4bit RC_4 (.operand1(operand1[15:12]), .operand2(operand2[15:12]), .Cout(cout[3]), .Result(Result[15:12]), .Cin(cin[2]));
	SkipLogic SL_4 (.A(operand1[15:12]), .B(operand2[15:12]), .Cin(cin[2]), .Cout(cout[3]), .CinNext(cin[3]));
	
	buf (Cout, cin[3]);

endmodule
