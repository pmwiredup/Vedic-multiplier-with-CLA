module FA_lookahead_8bit(input [7:0] a, b, 
input cin,
output [7:0]sum,
output cout);
integer i;
wire [6:0] c_temp;
reg [7:0] G, P;
always @(*) begin
for(i = 0; i<8; i = i+1) begin
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
assign cout =      G[7]|(P[7]&c_temp[6]);

assign sum[0] = P[0]^cin;
assign sum[1] = P[1]^c_temp[0];
assign sum[2] = P[2]^c_temp[1];
assign sum[3] = P[3]^c_temp[2];
assign sum[4] = P[4]^c_temp[3];
assign sum[5] = P[5]^c_temp[4];
assign sum[6] = P[6]^c_temp[5];
assign sum[7] = P[7]^c_temp[6];
endmodule
