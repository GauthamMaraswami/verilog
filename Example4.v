// Behavioral description of four-to-one line multiplexer
// Verilog 2001, 2005 port syntax
module Example4
( output reg m_out,
input in_0, in_1, in_2, in_3,
input [1: 0] select
);
	always @ (in_0 or in_1 or in_2 or in_3 or select) 
	case (select)
		0: m_out = in_0;
		1: m_out = in_1;
		2: m_out = in_2;
		3: m_out = in_3;
	endcase
	
endmodule