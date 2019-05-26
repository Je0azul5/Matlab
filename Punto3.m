clc;
%mY(m)
%mY(m)-y(0)
%m^2Y(m)-mY(0)-y´(0)

syms y s t y2 y1;
disp('y´´ = y2,  y´ =y1, y= y');
e=input('Digite la ED: ');
g=input('Digite la funcion: ');
fplot(g, [0,15]);
grid;
p=input('Digite y(0): ');
q=input('Digite y´(0): ');
f=subs(e,y2,(s^2*y-s*p-q));
h=subs(f,y1,(s*y-s*p));
j=subs(h,y,(s*y));
k=solve(j-laplace(g),y);
Solution=ilaplace(k);
pretty(Solution);
ezplot(Solution);
grid;