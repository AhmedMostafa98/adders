`timescale 1ns / 1ps

module SkipLogic(
						input [3:0] A, B,
						input Cin, Cout,
						output CinNext
						);
						
	wire [3:0] P;
	wire Sel;
	
	xor (P[0], A[0], B[0]);
	xor (P[1], A[1], B[1]);
	xor (P[2], A[2], B[2]);
	xor (P[3], A[3], B[3]);
	
	and (Sel, P[0], P[1], P[2], P[3]);
	
	assign CinNext = Sel ? Cin : Cout ;


endmodule
