module adder16_6(x,y,add);                               // 16 bit blocksize 6
        input [15:0]x,y;
        output [16:0]add;
        blockSize6 b0(x[5:0],y[5:0],1'b0,add[5:0],c1);
        blockSize6 b1(x[11:6],y[11:6],c1,add[11:6],c2);
	blockSize4 b2(x[15:12],y[15:12],c2,add[15:12],c3);
        assign add[16]=c3;
endmodule

