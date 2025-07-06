`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2025 19:56:36
// Design Name: 
// Module Name: vedicmult_4bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vedicmult_4bit_tb();
reg [3:0] a, b;
wire [7:0] out;

vedicmult_4bit v1(a, b, out);

initial begin
$monitor($time, "a = %b, b= %b, out = %b", a, b, out);
#0 a = 4'b1110; b = 4'b0011;
#5 a = 4'b1100; b = 4'b1110;
#5 a = 4'b0110; b = 4'b0101;
#10 $finish;
end

endmodule

