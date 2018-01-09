// Test bench for Example 1

`timescale 1ns/10ps

module t_Example1;
	wire D, E;
	reg A, B, C;
	Example1 M1 (A, B, C, D, E); // Instance name required
	initial
	begin
		$dumpfile("t_Example1.vcd");
		$dumpvars(0, t_Example1);
		A = 1'b0; 
		B = 1'b0; 
		C = 1'b0;
		#100;
		A = 1'b1; 
		B = 1'b1; 
		C = 1'b1;
		#100;
		A = 1'b0; 
		B = 1'b1; 
		C = 1'b1;
	end
	initial #300 $finish;
endmodule