
`timescale 1ns/100ps
module cmod6 ( clk ,reset ,dout );

output [2:0] dout ;
reg [2:0] dout ;

input clk ;
wire clk ;
input reset ;
wire reset ;

initial dout = 0;

always @ (posedge (clk)) begin
 if (reset)
  dout = 0;
 else if (dout<5)
  dout = dout + 1;
 else
  dout = 0;
end
     
endmodule