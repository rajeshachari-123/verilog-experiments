//DESIGN CODE FOR UP_COUNTER
module up_down_counter(

// INPUTS AND OUTPUTS
                 input clk,rst,
                 input up_down,
                 output reg [3:0]count
);
always@ (posedge clk or posedge rst) begin
if(rst)
    count <= 1'b0;
else if(up_down)
   count <= count+1;
else
   count <= count-1;
end
endmodule
