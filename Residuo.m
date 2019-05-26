clc;
sym z;
q=[(1) (-2i) (1i/2) (2i) (-(3^(1/2)*1i)/2- 1/2) ((3^(1/2)*1i)/2 - 1/2)];
f=1/((z-1)*(z+2i)*(z-2i)*(2*z-1i)*(z^2+z+1));

for i=1 :6
if(i==3)
    %resultado dotorgado por Wolfram alpha (z-i/2)/((z-1)*(z+2i)*(z-2i)*(2*z-1i)*(z^2+z+1)),z=i/2
x=(-128/975+16i/975)*2*pi*1i;
else
    x=2*pi*1i*subs((z-q(i))*f,z,q(i));
%limit(g,-2i);
end
%disp('Remplazo');
%disp(i);
disp(x);
end 