`timescale 1ns/100ps
module t_Example6;
	wire Q1, Q2, Q3, Q4, Q5, Q5_b;
	reg D, clk, rst, K;
		
	Example61 DFF (Q1, D, clk);
	Example62 DFFWR (Q2, D, clk, rst);
	TFF TFF(Q3, D, clk);
	JKFF JKFF(Q4, D, K, clk);
	JK_FF JK_FF(D, K, Clk, Q5, Q5_b);

	initial
	begin
		$dumpfile("t_Example6.vcd");
		$dumpvars(0, t_Example6);
		
		clk = 1'b1;
		repeat (30)
		#10 clk = ~clk;
	end
		
	initial
	begin
		K = 1'b0;
		repeat (30)
		#12 K = ~K;
	end 
	
	initial
	begin
		D = 1'b1;
		repeat (30)
		#12 D = ~D;
	end
	
	initial
	begin
		rst = 1'b1;
		repeat (2)
		#100 rst = ~rst;
	end
	
	initial #300 $finish;
endmodule