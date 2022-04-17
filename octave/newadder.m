function [s,cin] = newadder(x,y,cin,M)
  for i = [M:-1:1]
    a = str2num(x(i));
    b = str2num(y(i));
    c = xor(a,b);
    s(i) = xor(cin,c);
    cin = a &cin | b & cin | a&b;     
  endfor
endfunction
