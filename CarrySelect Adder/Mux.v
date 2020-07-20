`timescale 1ns / 1ps

module Mux
#(parameter Width = 1)
(
	input [Width-1 : 0] IN1, IN0,
	input Sel,
	output [Width-1 : 0] OUT
);

	assign OUT = Sel ? IN1 : IN0;

endmodule
