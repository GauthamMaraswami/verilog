// Gate-level description of two-to-four-line decoder
// Refer to Fig. 4.19 with symbol E replaced by enable , for clarity.
module Example3 (D, A, B, enable);
	output reg [0:3] D;
	input A, B, enable;

	//Gate level Modelling
	/*wire A_not, B_not, enable_not;
	not
		G1 (A_not, A),
		G2 (B_not, B),
		G3 (enable_not, enable);
	nand
		G4 (D[0], A_not, B_not, enable_not),
		G5 (D[1], A_not, B, enable_not),
		G6 (D[2], A, B_not, enable_not),
		G7 (D[3], A, B, enable_not);*/
		
	
	/*// Dataflow Modelling
	assign 	D[0] = ~((~A) && (~B) && (~enable)),
			D[1] = ~((~A) && B && (~enable)),
			D[2] = ~(A && B && (~enable)),
			D[3] = ~(A && B && (~enable));*/
			
	// Behavioral Modelling
	always @ (A or B or enable)
	if (enable == 0)
	begin
			if (A == 0 && B == 0)
				D = 4'b1000;
			else if (A == 0 && B == 1)
				D = 4'b0100;
			if (A == 1 && B == 0)
				D = 4'b0010;
			if (A == 1 && B == 1)
				D = 4'b0001;
	end
	else
		D = 4'b1101;
	
endmodule