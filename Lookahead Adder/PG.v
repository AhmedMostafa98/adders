`timescale 1ns / 1ps

module PG (
				input a , b,
				output p, g
				);
				
	and (g, a, b);
	xor (p, a, b);
	
endmodule
