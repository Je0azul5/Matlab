clc;
clear;
b = [10 10 10 9 10 10 11 13 14 16 16 17 18 18 17 17];
t = [ 1/24 2/24 3/24 4/24 5/24 6/24 7/24 8/24 9/24 10/24 11/24 12/24 13/24 14/24 15/24 16/24];
r=0:0.01:1;
c1=ones(1,16);
c2=zeros(0,16);
c3=zeros(0,16);
c4=zeros(0,16);
c5=zeros(0,16);

for i=1:16
   c2(i)=sin(2*pi*t(i));
   c3(i)=cos(2*pi.*t(i));
   c4(i)=cos(4*pi.*t(i));
   c5(i)=t(i)^2;
end
A=[c1;c2;c3;c4;c5];
A=A';
S=A'*A\A'*b';
X=[S(1),S(2),S(3),S(4),S(5)];
disp('      C1        C2        C3         C4         c5')
disp(X);
Y=X(1)+X(2)*sin(2*pi.*r)+X(3)*cos(2*pi.*r)+X(4)*cos(4*pi.*r)+X(5).*r.^2;
plot(t,b,'.',r,Y);
cont=length(X);
for i=1:cont
    f=(Y(i)-b(i))^2;
    e=abs(f);
    er(i)=e;
end
contu=length(er);
for i=1:contu
    es=0;
    es=es+er(1);
end
ec=sqrt(es/cont);
disp('   Error Cuadratico Medio');
disp(ec);
disp('Pronostico Para las 7 de la noche');
pro=Y(17);