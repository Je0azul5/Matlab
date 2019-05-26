clc;
syms t;
h=heaviside(1*t+1/2)-heaviside(1*t-1/2);
u=fourier(h);
pretty(u);
ezplot(u);
