module vedicmult_16bit(input[15:0] a,b,
input clk, reset,
output reg [31:0] out);
   
wire [31:0]q0;	
wire [31:0]q1;	
wire [31:0]q2;
wire [31:0]q3;	

wire [15:0]temp1;
wire [23:0]temp2;
wire [23:0]temp3;
wire [23:0]temp4;

wire [15:0]q4;
wire [23:0]q5;
wire [23:0]q6;

wire cout1, cout2, cout3;

vedicmult_8bit f1(a[7:0],b[7:0],q0[31:0]);
vedicmult_8bit f2(a[15:8],b[7:0],q1[31:0]);
vedicmult_8bit f3(a[7:0],b[15:8],q2[31:0]);
vedicmult_8bit f4(a[15:8],b[15:8],q3[31:0]);

assign temp1 ={8'b0,q0[15:8]};
FA_lookahead_16bit f5(q1[15:0],temp1, 1'b0, q4, cout1);
assign temp2 ={8'b0,q2[15:0]};
assign temp3 ={q3[15:0],8'b0};
FA_lookahead_24bit f6(temp2,temp3, 1'b0, q5, cout2);
assign temp4={7'b0, cout1, q4[15:0]};

FA_lookahead_24bit z7(temp4,q5,1'b0, q6, cout3);

always @(posedge clk) begin
if (reset) begin
out[7:0]<=q0[7:0];
out[31:8]<=q6[23:0];
end
else begin 
out[31:0] <= 32'd0;
end
end
endmodule
