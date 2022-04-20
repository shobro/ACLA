function [decimal] = binarytodecimal(x)
  decimal = 0;
  [s1,s2] = size(x);
  for i = [1:1:s2]
    decimal = x(i) * 2^(s2-i) + decimal;
  endfor
endfunction
