module adder8_8(a,b,sum);
	input [7:0]a,b;
	output [8:0] sum;
	wire c0;
	blockSize8 b0(a[7:0],b[7:0],1'b0,sum[7:0],c0);
	assign sum[8] = c0;
endmodule
