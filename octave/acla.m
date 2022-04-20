function [x] = acla(x,y,n,m) %n=no of bits   %m=blocksize %x and y are numbers to be added
  a = dec2bin(x,n);
  b = dec2bin(y,n);
  cin =0;
  sum = 0;
  s = 0;
  N = floor(n/m); #no of adders
  for i = [0:1:N-1]
    strindex = (n - ((i + 1)*m)) + 1;
    endindex = n - (i*m);
    [s,cin] = blockadder(a(strindex:endindex),b(strindex:endindex),cin,m);
    sum =[s,sum];
  endfor
  if (n - N*m >= 4)
    [s,cin] = blockadder(a(1:n-N*m),b(1:n-N*m),cin,n-N*m);
    sum = [s,sum];
  elseif(n-N*m != 0)
    [s,cin] = fulladder(a(1:n-N*m),b(1:n-N*m),cin,n-N*m); 
    sum=[s,sum];
  endif
  sum = [cin,sum];
  sum = sum(1:n+1);
  x = binarytodecimal(sum);
endfunction
