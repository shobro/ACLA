module carry_look_ahead_32_8bit(a,b, cin, sum,cout);
input [31:0] a,b;
input cin;
output [32:0] sum;
output cout;
wire c1,c2,c3;

carry_look_ahead_8bit cla1 (.a(a[7:0]), .b(b[7:0]), .cin(cin), .sum(sum[7:0]), .cout(c1));
carry_look_ahead_8bit cla2 (.a(a[15:8]), .b(b[15:8]), .cin(c1), .sum(sum[15:8]), .cout(c2));
carry_look_ahead_8bit cla3 (.a(a[23:16]), .b(b[23:16]), .cin(c2),.sum(sum[23:16]), .cout(c3));
carry_look_ahead_8bit cla4 (.a(a[31:24]), .b(b[31:24]), .cin(c3), .sum(sum[31:24]), .cout(cout));
 assign sum[32] = cout;
endmodule

