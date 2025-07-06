module fa_lookahead_tb_4bit();
reg [3:0] a, b;
reg cin;
wire cout;
wire[3:0] sum;

FA_lookahead_4bit f1(a, b, cin, sum, cout);

initial begin
$monitor($time, "a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);
#0 a = 4'b1010; b = 4'b0110; cin = 1'b0;
#4 a = 4'b1010; b = 4'b0110; cin = 1'b1;
#5 a = 4'b1100; b = 4'b1111; cin = 1'b1;
#4 a = 4'b1100; b = 4'b1111; cin = 1'b0;
end
endmodule

module fa_lookahead_tb_6bit();
reg [5:0] a, b;
reg cin;
wire cout;
wire[5:0] sum;

FA_lookahead_6bit f1(a, b, cin, sum, cout);

initial begin
$monitor($time, "a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);
#0 a = 6'b101010; b = 6'b100110; cin = 1'b0;
#4 a = 6'b101110; b = 6'b100110; cin = 1'b1;
#5 a = 6'b110100; b = 6'b001111; cin = 1'b1;
#4 a = 6'b001100; b = 6'b011111; cin = 1'b0;
end
endmodule
