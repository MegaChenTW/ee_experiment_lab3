module comp(Cin,Min,clk,change);
//input
input [5:0]Cin,Min;
input clk;
//output
output reg change;

always@(posedge clk)
    change<=(Cin == Min)?1:0;

endmodule