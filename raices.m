%programa para calcular las raices de un numero complejo
a=input('Ingrese el valor de la parte real: ');
b=input('Ingrese el valor de la parte imaginaria: ');
n=input('ingrese el valor del indice de la raiz : ');
z=complex(a,b);
k=0:n-1;
z1=nthroot(abs(z),n)*exp(i*(angle(z)+2*pi*k)/n);
fprintf('el valor de las raices es: ');
fprintf('%f, ',z1);
plot(z1);
compass(z1);