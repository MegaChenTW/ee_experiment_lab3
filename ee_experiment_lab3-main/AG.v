module AG(reset, m_clk,sel,addr_out);
    input reset,m_clk,sel;
    output reg [7:0] addr_out;

    reg[6:0]count;
    wire [7:0]_addr_out;

    always @(posedge m_clk or negedge reset) 
    begin
        if(reset == 0)
            count <= 7'b0;
        else
            count<=(count>=7'd127)?7'd0:count+1; 
    end
always@(negedge m_clk)
    addr_out<={sel,count[6:0]};
endmodule
