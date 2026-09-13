// SISO SHIFT REGISTER
module siso_reg(
                input clk,rst,si,
                output reg so
);

reg [3:0]temp;
always@ (posedge clk or posedge rst) begin
if(rst)
    temp <= 4'b0000;
else 
    temp <= {si,temp[3:1]};
end
assign so = temp[0];
endmodule
