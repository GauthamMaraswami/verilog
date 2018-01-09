`timescale 1ns/10ps
module tE1;
reg A,B,C;
wire D,E;
E1 ddf(A,B,C,D,E);
initial
 begin
	$dumpfile("tE1.vcd");
	$dumpvars(0, tE1);
	A=1'b0;
	B=1'b0;
	C=1'b0;
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
