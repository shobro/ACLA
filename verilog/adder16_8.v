module adder16_8(a,b,sum);
        input[15:0] a,b;
        output[16:0]sum;
        blockSize8 b0(a[7:0],b[7:0],1'b0,sum[7:0],c1);
	blockSize8 b1 (a[15:8],b[15:8],c1,sum[15:8],c2);
        assign sum[16] = c2;
endmodule

