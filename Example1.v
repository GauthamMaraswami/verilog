// Example 1

module Example1 (A, B, C, D, E);
	output D, E;
	input A, B, C;
	wire w1;
	/* and #(30) G1 (w1, A, B);
	not #(10) G2 (E, C);
	or #(20) G3 (D, w1, E);*/
	
	and G1 (w1, A, B, C);
	not G2 (E, C);
	or  G3 (D, w1, E);
endmodule