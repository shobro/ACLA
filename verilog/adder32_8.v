module adder32_8(a,b,sum);
        input[31:0] a,b;
        output[32:0]sum;
        blockSize8 b0(a[7:0],b[7:0],1'b0,sum[7:0],c1);
        blockSize8 b1 (a[15:8],b[15:8],c1,sum[15:8],c2);
	blockSize8 b2(a[23:16],b [23:16],c2,sum[23:16],c3);
	blockSize8 b3 (a[31:24],b[31:24],c3,sum[31:24],c4);
        assign sum[32] = c4;
endmodule

