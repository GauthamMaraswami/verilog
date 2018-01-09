
`timescale 1ns/100ps
module tcmod6;
	wire [2:0] dout;
	reg clk,reset;
	cmod6  count(  clk, reset,dout);
	initial
	begin
		$dumpfile("tcmod6.vcd");
		$dumpvars(0,tcmod6);
		clk=1'b1;
		repeat(30)
		#10 clk = ~clk;
	end
	
		
initial 
begin
reset=0;
end
 initial #300 $finish;
 endmodule