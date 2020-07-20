`timescale 1ns / 1ps

module Half_Adder(
		output Sum,
		output Cout,
		input A,
		input B
    );

	xor (Sum , A , B);
	and (Cout , A , B);

endmodule
