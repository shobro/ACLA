module adder32_6(x,y,add);                               // 16 bit blocksize 6
        input [31:0]x,y;
        output [32:0]add;
        blockSize6 b0(x[5:0],y[5:0],1'b0,add[5:0],c1);
        blockSize6 b1(x[11:6],y[11:6],c1,add[11:6],c2);
        blockSize6 b2(x[17:12],y[17:12],c2,add[17:12],c3);
	blockSize6 b3(x[23:18],y[23:18],c3,add[23:18],c4);
	blockSize6 b4(x[29:24],y[29:24],c4,add[29:24],c5);
	fulladder f1(x[30],y[30],c5,add[30],c6);
	fulladder f2(x[31],y[31],c6,add[31],c7);
        assign add[32]=c7;
endmodule

