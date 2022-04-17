module fulladder(a,b,cin,sum,cout);
        input a,b,cin;
        output sum,cout;
        assign sum=(a^b)^cin;
        assign cout=(a&b) || (a^b)&cin ;
endmodule


