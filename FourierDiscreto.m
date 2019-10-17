x = []; 
N = length(x); 
c = [];
for k=1:N
    aux = 0;
    for n=0:(N-1)
        aux = aux + (x(n+1)*exp(-2i*n*pi*k/N));
    end
    c(k) = aux/N;
end
c = flip(c);
c = c' %coeficientes

N = length(c);
y1 = [];
x1 = [];
for n=0:2*length(x)-1
    res = 0;    
    for k=0:(N-1)
         res = res + (c(k+1)*exp(2i*pi/N*k*n));
    end
y1(n+1) = res;
x1(n+1)=n-1;
end
stem(x1, y1)