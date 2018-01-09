module E3(D,A,B,C,enable);
output reg:[0:3]D;
input A,B,enable;
always @(A or B or enable);
	begin
	if(A==0&&B==0)
	 D=4'b0000;
	 
	end
