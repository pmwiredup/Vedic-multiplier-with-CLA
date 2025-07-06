`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2025 00:38:00
// Design Name: 
// Module Name: vedicmult_8bit_tb
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


module vedicmult_8bit_tb();
reg [7:0] a, b;
wire [15:0] out;

vedicmult_8bit v1(a, b, out);

initial begin
$monitor($time, "a = %b, b= %b, out = %b", a, b, out);
#0 a = 8'd5; b = 8'd8;
#5 a = 8'd15; b = 8'd15;
#5 a = 8'd25; b = 8'd27;
#10 a = 8'd19; b = 8'd20;
#10 $finish;
end

endmodule

