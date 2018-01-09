`timescale 1ns/100ps
module t_Example7;
	wire [3:0] A_count;
	wire C_out;
	reg [3:0] Data_in;
	reg Count, Load, clk, Clear_b;
		
	/*output reg [3: 0] A_count, // Data output
	output C_out, // Output carry
	input [3: 0] Data_in, // Data input
	input Count, // Active high to count
	Load, // Active high to load
	CLK, // Positive-edge sensitive
	Clear_b // Active low
	*/
	Example7 M7 (A_count, C_out, Data_in, Count, Load, clk, Clear_b);
	initial
	begin
		$dumpfile("t_Example7.vcd");
		$dumpvars(0, t_Example7);
		
		clk = 1'b1;
		repeat (30)
		#10 clk = ~clk;
	end
	
	initial
	begin
		Data_in = 4'b1010;
		Load = 1'b1;
		#10;
		Load = 1'b0;
		Clear_b = 1'b1;
		Count = 1'b1;
	end
	
	initial #300 $finish;
endmodule