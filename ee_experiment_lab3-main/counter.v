module counter(clk_div,change,out);
//input
input clk_div,change;
//output
output reg [5:0]out;

always@(posedge change or posedge clk_div)
begin
    if(change == 1)
        out <= 0;
    else
        out<=out+1;
end

endmodule