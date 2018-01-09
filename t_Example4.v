// Test bench for Example 2

`timescale 1ns/100ps

module t_Example4;
	wire m_out;
	reg in_0, in_1, in_2, in_3;
	reg [1:0] select;
		
	Example4 M4 (m_out, in_0, in_1, in_2, in_3, select);
	initial
	begin
		#1 $monitor(" select = ", select, "  |  m_out = ", m_out );
		$dumpfile("t_Example4.vcd");
		$dumpvars(0, t_Example4);
		in_0 = 1'b0; 
		in_1 = 1'b0; 
		select = 2'b00;
		#100;
		in_1 = 1'b1; 
		in_2 = 1'b1; 
		select = 2'b01;
		/*#100;
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
		enable = 1'b1;*/
	end
	initial #500 $finish;
endmodule