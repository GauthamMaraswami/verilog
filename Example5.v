module Example5
( output lower, equal, greater,
input [3:0] A, B
);
	assign lower = (A < B);
	assign greater = (A > B);
	assign equal = (A == B);
	
	/*// Behavioural Model
	always @ (A or B) begin
	if (A<B) begin
		  equal = 0;
		  lower = 1;
		  greater = 0;
	end else if (A==B) begin
	  equal = 1;
	  lower = 0;
	  greater = 0;
	 end else begin
	  equal = 0;
	  lower = 0;
	  greater = 1;
	 end
	end*/
endmodule