`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 04:34:08 PM
// Design Name: 
// Module Name: _4x4_multiplier
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
module _4_bit_adder(x, y, cin, cout, s);
    input [3:0] x;
    input [3:0] y;
    input cin;
    output cout;
    output [3:0] s;

    wire c1, c2, c3;

    full_adder fa1(.x(x[0]), .y(y[0]), .cin(cin), .cout(c1), .s(s[0]));
    full_adder fa2(.x(x[1]), .y(y[1]), .cin(c1), .cout(c2), .s(s[1]));
    full_adder fa3(.x(x[2]), .y(y[2]), .cin(c2), .cout(c3), .s(s[2]));
    full_adder fa4(.x(x[3]), .y(y[3]), .cin(c3), .cout(cout), .s(s[3]));

endmodule

module and_gate(x,y,f);
    input x;
    input y;
    output f;
    assign f = x & y;
endmodule

module _4x4_multiplier(x, y, p);
    input [3:0] x;
    input [3:0] y;
    output [7:0] p;
    wire [22:0] w;

    and_gate and1(.x(x[0]), .y(y[0]), .f(p[0]));
    and_gate and2(.x(x[1]), .y(y[0]), .f(w[0]));
    and_gate and3(.x(x[2]), .y(y[0]), .f(w[1]));
    and_gate and4(.x(x[3]), .y(y[0]), .f(w[2]));
    and_gate and5(.x(x[0]), .y(y[1]), .f(w[3]));
    and_gate and6(.x(x[1]), .y(y[1]), .f(w[4]));
    and_gate and7(.x(x[2]), .y(y[1]), .f(w[5]));
    and_gate and8(.x(x[3]), .y(y[1]), .f(w[6]));

    _4_bit_adder adder1({0, w[2], w[1], w[0]}, {w[6], w[5], w[4], w[3]}, 0, w[10], {w[9], w[8], w[7], p[1]});

    and_gate and9(.x(x[0]), .y(y[2]), .f(w[11]));
    and_gate and10(.x(x[1]), .y(y[2]), .f(w[12]));
    and_gate and11(.x(x[2]), .y(y[2]), .f(w[13]));
    and_gate and12(.x(x[3]), .y(y[2]), .f(w[14]));

    _4_bit_adder adder2({w[10], w[9], w[8], w[7]}, {w[14], w[13], w[12], w[11]}, 0, w[18], {w[17], w[16], w[15], p[2]});

    and_gate and13(.x(x[0]), .y(y[3]), .f(w[19]));
    and_gate and14(.x(x[1]), .y(y[3]), .f(w[20]));
    and_gate and15(.x(x[2]), .y(y[3]), .f(w[21]));
    and_gate and16(.x(x[3]), .y(y[3]), .f(w[22]));

    _4_bit_adder  adder3({w[18], w[17], w[16], w[15]}, {w[22], w[21], w[20], w[19]}, 0, p[7], {p[6], p[5], p[4], p[3]});

endmodule
