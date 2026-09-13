// SISO SHIFT REGISTER
module sipo_reg(
                input clk,rst,si,
                output reg [3:0]po
);

reg [3:0]temp;
always@ (posedge clk or posedge rst) begin
if(rst)
    temp <= 4'b0000;
else 
    temp <= {si,temp[3:1]};
end
assign po = temp;
endmodule
