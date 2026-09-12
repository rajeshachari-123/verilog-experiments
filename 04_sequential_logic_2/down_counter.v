//DESIGN CODE FOR UP_COUNTER
module down_counter(
                 input clk,rst,
                 output reg [3:0]count
);
always@ (posedge clk or posedge rst) begin
if(rst)
    count <= 1'b0;
else 
   count <= count-1;
end
endmodule
