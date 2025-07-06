module vedicmult_4bit(input [3:0] a, b,
output [7:0] out);

wire [3:0]q0;	
wire [3:0]q1;	
wire [3:0]q2;
wire [3:0]q3;	

wire [3:0]temp1;
wire [5:0]temp2;
wire [5:0]temp3;
wire [5:0]temp4;
wire [5:0]temp5;

wire [3:0]q4;
wire [5:0]q5;
wire [5:0]q6;

wire cout1, cout2, cout3;

vedicmult_2bit f1(a[1:0],b[1:0],q0[3:0]);
vedicmult_2bit f2(a[3:2],b[1:0],q1[3:0]);
vedicmult_2bit f3(a[1:0],b[3:2],q2[3:0]);
vedicmult_2bit f4(a[3:2],b[3:2],q3[3:0]);

assign temp1 ={2'b0,q0[3:2]};
FA_lookahead_4bit f5(q1[3:0],temp1, 1'b0, q4, cout1);
assign temp2 ={2'b0,q2[3:0]};
assign temp3 ={q3[3:0],2'b0};
FA_lookahead_6bit f6(temp2,temp3,1'b0, q5, cout2);

assign temp4={1'b0,cout1,q4[3:0]};

FA_lookahead_6bit f7(temp4,q5,1'b0, q6, cout3);
assign out[1:0]=q0[1:0];
assign out[7:2]=q6[5:0];
endmodule
