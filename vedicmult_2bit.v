module HA(input a, b,
output sum, cout);
assign sum = a^b;
assign cout = a&b;
endmodule

module vedicmult_2bit(input [1:0] a, b,
output [3:0] out);

wire[3:0] temp;

assign out[0] = a[0]&b[0];
assign temp[0] = a[1]&b[0];
assign temp[1] = a[0]&b[1];
assign temp[2] = a[1]&b[1];

HA h1(temp[0], temp[1], out[1], temp[3]);
HA h2(temp[2], temp[3], out[2], out[3]);
endmodule
