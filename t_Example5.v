module t_Example5;
	wire A_lt_B, A_eq_B, A_gt_B;
	reg [3:0] A, B;
		
	Example5 M5 (A_lt_B, A_eq_B, A_gt_B, A, B);
	initial
	begin
		//#1 $monitor(" select = ", select, "  |  m_out = ", m_out );
		$dumpfile("t_Example5.vcd");
		$dumpvars(0, t_Example5);
		A = 4'b1010;
		B = 4'b1100;
		/*#10;
		A = 10;
		B = 10;
		#10;
		A = 12;
		B = 10*/
	end
	initial #40 $finish;
endmodule