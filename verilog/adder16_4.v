module adder16_4(a,b,sum);
	input[15:0] a,b;
	output[16:0]sum;
	wire c1,c2,c3,c4;
	blockSize4 b0(a[3:0],b[3:0],1'b0,sum[3:0],c1);
	blockSize4 b1(a[7:4],b[7:4],c1,sum[7:4],c2);
	blockSize4 b2(a[11:8],b[11:8],c2,sum[11:8],c3);
	blockSize4 b3(a[15:12],b[15:12],c3,sum[15:12],c4);
	assign sum[16] = c4;
endmodule
