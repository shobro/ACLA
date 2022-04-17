module carry_look_ahead_32_4bit(a,b, cin, sum,cout);
input [31:0] a,b;
input cin;
output [32:0] sum;
output cout;
wire c1,c2,c3,c4,c5,c6,c7;

carry_look_ahead_4bit cla1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c1));
carry_look_ahead_4bit cla2 (.a(a[7:4]), .b(b[7:4]), .cin(c1), .sum(sum[7:4]), .cout(c2));
carry_look_ahead_4bit cla3 (.a(a[11:8]), .b(b[11:8]), .cin(c2), .sum(sum[11:8]), .cout(c3));
carry_look_ahead_4bit cla4 (.a(a[15:12]), .b(b[15:12]), .cin(c3), .sum(sum[15:12]), .cout(c4));
carry_look_ahead_4bit cla5 (.a(a[19:16]), .b(b[19:16]), .cin(c4), .sum(sum[19:16]), .cout(c5));
carry_look_ahead_4bit cla6 (.a(a[23:20]), .b(b[23:20]), .cin(c5), .sum(sum[23:20]), .cout(c6));
carry_look_ahead_4bit cla7 (.a(a[27:24]), .b(b[27:24]), .cin(c6), .sum(sum[27:24]), .cout(c7));
carry_look_ahead_4bit cla8(.a(a[31:28]), .b(b[31:28]), .cin(c7), .sum(sum[31:28]), .cout(cout));
 assign sum[32] = cout;
endmodule

