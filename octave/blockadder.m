function [s,cin] = blockadder(x,y,cin,M)
  for i = [M:-1:1]
    a = str2num(x(i));
    b = str2num(y(i));
    c = xor(a,b);
    s(i) = xor(cin,c);
    cin = a &cin | b & cin | a&b;    
  endfor
  a = zeros(1,M);
  b = zeros(1,M);
  for i = [1:1:M]
    a(i) = str2num(x(i));
    b(i) = str2num(y(i));
  endfor
 %cin=(((xor(a(1),b(1)) & xor(a(2),b(2))) & ((((a(6)&b(6)) | (a(5) & b(5)) | a(4)& b(4)) & (a(3) | b(3))) | (a(3) & b(3))) )) | ((a(2) & b(2)) & xor (a(1),b(1))) | (a(1) &b(1));
  fac1 = xor(a(1),b(1));
  fac2 = xor(a(2),b(2));
  fac3 = a(3)|b(3);
  sum1 =0;
  for i = [M:-1:3]
    sum1 = sum1 | a(i)&b(i); 
  endfor
  cin = (sum1 & fac1 & fac2 & fac3) | ((a(3) & b(3)) & (fac1 & fac2)) | ((a(2) & b(2)) & fac1) | (a(1)&b(1)); 
endfunction
