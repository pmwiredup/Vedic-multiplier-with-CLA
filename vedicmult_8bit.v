module vedicmult_8bit(input[7:0] a,b,
output [15:0] out);
   
wire [15:0]q0;	
wire [15:0]q1;	
wire [15:0]q2;
wire [15:0]q3;	

wire [7:0]temp1;
wire [11:0]temp2;
wire [11:0]temp3;
wire [11:0]temp4;

wire [7:0]q4;
wire [11:0]q5;
wire [11:0]q6;

wire cout1, cout2, cout3;

vedicmult_4bit f1(a[3:0],b[3:0],q0[15:0]);
vedicmult_4bit f2(a[7:4],b[3:0],q1[15:0]);
vedicmult_4bit f3(a[3:0],b[7:4],q2[15:0]);
vedicmult_4bit f4(a[7:4],b[7:4],q3[15:0]);

assign temp1 ={4'b0,q0[7:4]};
FA_lookahead_8bit f5(q1[7:0],temp1, 1'b0, q4, cout1);
assign temp2 ={4'b0,q2[7:0]};
assign temp3 ={q3[7:0],4'b0};
FA_lookahead_12bit f6(temp2,temp3, 1'b0, q5, cout2);
assign temp4={3'b0, cout1, q4[7:0]};

FA_lookahead_12bit z7(temp4,q5,1'b0, q6, cout3);

assign out[3:0]=q0[3:0];
assign out[15:4]=q6[11:0];
endmodule
