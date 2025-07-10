`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2025 18:26:08
// Design Name: 
// Module Name: vedicmultiplier_16bit_tb
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

module vedicmult_16bit_tb();
reg [15:0] a, b;
reg clk, reset;
wire [31:0] out;

vedicmult_16bit v1(a, b, clk, reset, out);

initial begin
forever begin 
clk = 1'b0;
#5 clk = 1'b1;
#5 clk = 1'b0;
end
end

always @(posedge clk) begin
$monitor($time, "clk = %b, reset = %b, a = %b, b= %b, out = %b", clk, reset, a, b, out);
end

initial begin

#0 reset = 1'b1; a = 16'd5; b = 16'd8;
#5 a = 16'd15; b = 16'd15;
#5 reset = 1'b0 ;a = 16'd25; b = 16'd27;
#10 a = 16'd19; b = 16'd20;
#10 reset = 1'b1; a = 16'd73; b = 16'd20;
#10 a = 16'd91; b = 16'd81;
#10 $finish;
end

endmodule
