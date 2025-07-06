`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2025 18:57:51
// Design Name: 
// Module Name: vedicmult_2bit_tb
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


module vedicmult_2bit_tb();
reg [1:0] a, b;
wire [3:0] out;

vedicmult_2bit v1(a, b, out);

initial begin
$monitor($time, "a = %b, b= %b, out = %b", a, b, out);
#2 a = 2'b10; b = 2'b11;
#5 a = 2'b11; b = 2'b11;
#5 a = 2'b01; b = 2'b01;
end

endmodule
