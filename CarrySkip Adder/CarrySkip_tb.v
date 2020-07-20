`timescale 1ns / 1ps

module CarrySkip_tb;

	// Inputs
	reg [15:0] operand1;
	reg [15:0] operand2;

	// Outputs
	wire Cout;
	wire [15:0] Result;

	// Instantiate the Unit Under Test (UUT)
	CarrySkip uut (
		.operand1(operand1), 
		.operand2(operand2), 
		.Cout(Cout), 
		.Result(Result)
	);
reg [16:0] compare;

	initial
	begin
		$display("a|b||cout|sum");
   end
  
	initial
   begin
     $monitor("%b|%b||%b   |%b", operand1[15:0], operand2[15:0], Cout, Result[15:0]);
   end

	
	initial begin
	 operand1=16'b1010000010100000;
	 operand2=16'b1010000010100000;
	 
	 compare = operand1 + operand2;
	 #5;
	 if (compare == {Cout , Result})
		$display ("Success");
	 else
		$display ("Failed");
	 
    #10 operand1=16'b0101100011110100;
	 operand2=16'b1111010011110100;
	 
	 compare = operand1 + operand2;
	 #5;
	 if (compare == {Cout , Result})
		$display ("Success");
	 else
		$display ("Failed");

    #10 operand1=16'b0000111100111101;
	 operand2=16'b0000111100001111;
	 
	 compare = operand1 + operand2;
	 #5;
	 if (compare == {Cout , Result})
		$display ("Success");
	 else
		$display ("Failed");
	 
    #10 operand1=16'b1100100011001010;
	 operand2=16'b1100100011001010;
	 
	 compare = operand1 + operand2;
	 #5;
	 if (compare == {Cout , Result})
		$display ("Success");
	 else
		$display ("Failed");


	end
      
      
endmodule

