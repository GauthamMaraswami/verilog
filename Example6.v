// Description of D latch (See Fig. 5.6 )
/*module Example6 (Q, D, enable);
	output reg Q;
	input D, enable;
	always @ (enable or D)
		if (enable) 
			Q <= D; // Same as: if (enable == 1)
endmodule*/
	
/*// Alternative syntax (Verilog 2001, 2005)
module Example6 (output reg Q, input enable, D);
	always @ (enable, D)
	if (enable) 
		Q <= D; // No action if enable not asserted
endmodule */

// D fl ip-fl op without reset
module Example61 (Q1, D, Clk);
	output reg Q1;
	input D, Clk;
	always @ ( posedge Clk)
		Q1 <= D;
endmodule 

// D fl ip-fl op with asynchronous reset (V2001, V2005)
module Example62 ( output reg Q2, input D, Clk, rst);
	always @ ( posedge Clk, negedge rst)
	if (!rst) 
		Q2 <= 1'b0; // Same as: if (rst == 0)
	else 
		Q2 <= D;
endmodule

// T fl ip-fl op from D fl ip-fl op and gates
module TFF (Q3, T, Clk);
	output reg Q3;
	input T, Clk;
	always @ (posedge Clk)
		Q3 <= ~T;
endmodule

// JK flip-flop from D fl ip-fl op and gates (V2001, 2005)
module JKFF ( output reg Q4, input J, K, Clk);
	always @ (posedge Clk)
		Q4 <= (J & ~Q4) | (~K & Q4);
endmodule

// Functional description of JK fl ip-fl op (V2001, 2005)
module JK_FF (input J, K, Clk, output reg Q, output Q_b);
	assign Q_b = ~Q ;
	always @ (posedge Clk or J or K)
	case ({J,K})
		2'b00: Q <= Q;
		2'b01: Q <= 1'b0;
		2'b10: Q <= 1'b1;
		2'b11: Q <= ~Q;
	endcase
endmodule