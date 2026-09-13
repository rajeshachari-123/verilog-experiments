// pISO SHIFT REGISTER
module piso_reg(
                input clk,rst,shift,[3:0]pi,
                output reg so
);

reg [3:0]temp;
always@ (posedge clk or posedge rst) begin
if(rst) begin
    temp <= 4'b0000;
    so <=0;
 end else if (shift) begin
    so <= temp[0];
    temp <= {1'b0,temp[3:1]};
end else
    temp <= pi;
end
endmodule
