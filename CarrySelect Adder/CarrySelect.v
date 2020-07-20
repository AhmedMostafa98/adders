`timescale 1ns / 1ps

module CarrySelect(
						input [15:0] operand1, operand2,
						output Cout,
						output [15:0] Result
						);
						
	wire [15:0] sum1, sum0;
	wire [3:0] C1, C0;
	wire Cin1, Cin2, Cin3, Cin4;
	
	//from bit 0 to bit 3
	RippleCarry_4bit RC0_1 (.operand1(operand1[3:0]), .operand2(operand2[3:0]), .Cout(C0[0]), .Result(sum0[3:0]), .Cin(0));
	RippleCarry_4bit RC1_1 (.operand1(operand1[3:0]), .operand2(operand2[3:0]), .Cout(C1[0]), .Result(sum1[3:0]), .Cin(1));
	Mux #(4) mux4_1 (.IN1(sum1[3:0]), .IN0(sum0[3:0]), .Sel(0), .OUT(Result[3:0]));
	Mux #(1) mux1_1 (.IN1(C1[0]), .IN0(C0[0]), .Sel(0), .OUT(Cin1));
	
	//from bit 4 to bit 7
	RippleCarry_4bit RC0_2 (.operand1(operand1[7:4]), .operand2(operand2[7:4]), .Cout(C0[1]), .Result(sum0[7:4]), .Cin(0));
	RippleCarry_4bit RC1_2 (.operand1(operand1[7:4]), .operand2(operand2[7:4]), .Cout(C1[1]), .Result(sum1[7:4]), .Cin(1));
	Mux #(4) mux4_2 (.IN1(sum1[7:4]), .IN0(sum0[7:4]), .Sel(Cin1), .OUT(Result[7:4]));
	Mux #(1) mux1_2 (.IN1(C1[1]), .IN0(C0[1]), .Sel(Cin1), .OUT(Cin2));
	
	//from bit 8 to bit 11
	RippleCarry_4bit RC0_3 (.operand1(operand1[11:8]), .operand2(operand2[11:8]), .Cout(C0[2]), .Result(sum0[11:8]), .Cin(0));
	RippleCarry_4bit RC1_3 (.operand1(operand1[11:8]), .operand2(operand2[11:8]), .Cout(C1[2]), .Result(sum1[11:8]), .Cin(1));
	Mux #(4) mux4_3 (.IN1(sum1[11:8]), .IN0(sum0[11:8]), .Sel(Cin2), .OUT(Result[11:8]));
	Mux #(1) mux1_3 (.IN1(C1[2]), .IN0(C0[2]), .Sel(Cin2), .OUT(Cin3));
	
	//from bit 12 to bit 15
	RippleCarry_4bit RC0_4 (.operand1(operand1[15:12]), .operand2(operand2[15:12]), .Cout(C0[3]), .Result(sum0[15:12]), .Cin(0));
	RippleCarry_4bit RC1_4 (.operand1(operand1[15:12]), .operand2(operand2[15:12]), .Cout(C1[3]), .Result(sum1[15:12]), .Cin(1));
	Mux #(4) mux4_4 (.IN1(sum1[15:12]), .IN0(sum0[15:12]), .Sel(Cin3), .OUT(Result[15:12]));
	Mux #(1) mux1_4 (.IN1(C1[3]), .IN0(C0[3]), .Sel(Cin3), .OUT(Cin4));
	
	//cout
	buf (Cout , Cin4);

endmodule
