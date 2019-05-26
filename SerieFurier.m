clc;
syms x n;
f= input('Escriba f(x): ');
l= input('Escriba l: ');
%Integral de la funcion
o=int(f,x,-l,l);
%Multiplicacion por 1/l
%a0=simplify(o/l);
%Para ver a_0 descomente la siguiente linea
disp(a0);
%Se halla el primer termino de Fourier
aa=int(f*cos((n*pi*x)*1/l),x,-l,l);
an=simplify(aa/l);
%Para ver an descomente la siguiente linea
disp(an);
bb=int(f*sin((n*pi*x)*1/l),x,-l,l);
bn=simplify(bb/l);
%Para ver an descomente la siguiente linea
%disp(bn);
for i=1:10
    
    r=1/2*a0+subs(an*cos(n+pi*x*1/l),n,i)+subs(bn*sin(n+pi*x*1/l),n,i);
    disp(r);
    
    if (i==3 || i==5 ||i==8)
        grid on;
        ezplot(f);
        hold on;
        ezplot(r);
        hold on;
    end
    
end
