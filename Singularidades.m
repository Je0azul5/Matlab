clc;
syms z;
f=2*z^6-1i*z^5+8*z^4-(2+4*1i)*z^3+1i*z^2-8*z+4i;
%disp(f);
s=solve(f);
disp(s);