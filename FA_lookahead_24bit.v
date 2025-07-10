module FA_lookahead_24bit(input [23:0] a, b, 
input cin,
output [23:0]sum,
output cout);
integer i;
wire [22:0] c_temp;
reg [23:0] G, P;
always @(*) begin
for(i = 0; i<24; i = i+1) begin
G[i] = a[i]&b[i];
P[i] = a[i]^b[i];
end
end
assign c_temp[0] = G[0]|(P[0]&cin);
assign c_temp[1] = G[1]|(P[1]&c_temp[0]);
assign c_temp[2] = G[2]|(P[2]&c_temp[1]);
assign c_temp[3] = G[3]|(P[3]&c_temp[2]);
assign c_temp[4] = G[4]|(P[4]&c_temp[3]);
assign c_temp[5] = G[5]|(P[5]&c_temp[4]);
assign c_temp[6] = G[6]|(P[6]&c_temp[5]);
assign c_temp[7] = G[7]|(P[7]&c_temp[6]);
assign c_temp[8] = G[8]|(P[8]&c_temp[7]);
assign c_temp[9] = G[9]|(P[9]&c_temp[8]);
assign c_temp[10] = G[10]|(P[10]&c_temp[9]);
assign c_temp[11] = G[11]|(P[11]&c_temp[10]);
assign c_temp[12] = G[12]|(P[12]&c_temp[11]);
assign c_temp[13] = G[13]|(P[13]&c_temp[12]);
assign c_temp[14] = G[14]|(P[14]&c_temp[13]);
assign c_temp[15] = G[15]|(P[15]&c_temp[14]);
assign c_temp[16] = G[16]|(P[16]&c_temp[15]);
assign c_temp[17] = G[17]|(P[17]&c_temp[16]);
assign c_temp[18] = G[18]|(P[18]&c_temp[17]);
assign c_temp[19] = G[19]|(P[19]&c_temp[18]);
assign c_temp[20] = G[20]|(P[20]&c_temp[19]);
assign c_temp[21] = G[21]|(P[21]&c_temp[20]);
assign c_temp[22] = G[22]|(P[22]&c_temp[21]);
assign cout =      G[23]|(P[23]&c_temp[22]);

assign sum[0] = P[0]^cin;
assign sum[1] = P[1]^c_temp[0];
assign sum[2] = P[2]^c_temp[1];
assign sum[3] = P[3]^c_temp[2];
assign sum[4] = P[4]^c_temp[3];
assign sum[5] = P[5]^c_temp[4];
assign sum[6] = P[6]^c_temp[5];
assign sum[7] = P[7]^c_temp[6];
assign sum[8] = P[8]^c_temp[7];
assign sum[9] = P[9]^c_temp[8];
assign sum[10] = P[10]^c_temp[9];
assign sum[11] = P[11]^c_temp[10];
assign sum[12] = P[12]^c_temp[11];
assign sum[13] = P[13]^c_temp[12];
assign sum[14] = P[14]^c_temp[13];
assign sum[15] = P[15]^c_temp[14];
assign sum[16] = P[16]^c_temp[15];
assign sum[17] = P[17]^c_temp[16];
assign sum[18] = P[18]^c_temp[17];
assign sum[19] = P[19]^c_temp[18];
assign sum[20] = P[20]^c_temp[19];
assign sum[21] = P[21]^c_temp[20];
assign sum[22] = P[22]^c_temp[21];
assign sum[23] = P[23]^c_temp[22];
endmodule
