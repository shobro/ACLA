module carry_look_ahead_16_8bit(a,b, cin, sum,cout);
input [15:0] a,b;
input cin;
output [16:0] sum;
output cout;
wire c1;

carry_look_ahead_8bit cla1 (.a(a[7:0]), .b(b[7:0]), .cin(cin), .sum(sum[7:0]), .cout(c1));
carry_look_ahead_8bit cla2 (.a(a[15:8]), .b(b[15:8]), .cin(c1), .sum(sum[15:8]), .cout(cout));
 assign sum[16] = cout;
endmodule

