// Test bench for Example 2

`timescale 1ns/100ps

module t_Example2;
	wire e, f;
	reg a, b, c, d;
		
	Example2 M2 (e, f, a, b, c, d);
	initial
	begin
		$dumpfile("t_Example2.vcd");
		$dumpvars(0, t_Example2);
		a = 1'b0; 
		b = 1'b0; 
		c = 1'b0;
		d = 1'b1;
		#100;
		a = 1'b1; 
		b = 1'b1; 
		c = 1'b1;
		d = 1'b0;
	end
	initial #200 $finish;
endmodule