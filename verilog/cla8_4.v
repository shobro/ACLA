module carry_look_ahead_8_4bit(a,b, cin, sum,cout);
input [7:0] a,b;
input cin;
output [8:0] sum;
output cout;
wire c1;

carry_look_ahead_4bit cla1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c1));
carry_look_ahead_4bit cla2 (.a(a[7:4]), .b(b[7:4]), .cin(c1), .sum(sum[7:4]), .cout(cout));
 assign sum[8] = cout;
endmodule

