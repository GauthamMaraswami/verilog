// Test bench for Example 2

`timescale 1ns/100ps

module t_Example3;
	wire [0:3] D;
	reg A, B, enable;
		
	Example3 M3 (D, A, B, enable);
	initial
	begin
		$dumpfile("t_Example3.vcd");
		$dumpvars(0, t_Example3);
		A = 1'b0; 
		B = 1'b0; 
		enable = 1'b0;
		#100;
		A = 1'b0; 
		B = 1'b1; 
		enable = 1'b0;
		#100;
		A = 1'b1; 
		B = 1'b0; 
		enable = 1'b0;
		#100;
		A = 1'b1; 
		B = 1'b1; 
		enable = 1'b0;
		#100;
		A = 1'b1; 
		B = 1'b1; 
		enable = 1'b1;
	end
	initial #500 $finish;
endmodule