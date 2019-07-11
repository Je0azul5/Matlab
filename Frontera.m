clc;
%%y'':((Yi+1)-(2Yi)+(Yi-1))/h^2
%y':((Yi+1)-(Yi-1))/2h
disp('¿La funcion tiene t? :');
disp('1 si tiene t o 0 si no tiene');
q=input('');
if(q==0)
n=input('Digite el tamaño de la matriz: ');
d=input('Digite valor de la diagonal: ');
for i=1:n
    for j=1:n
        if(i==1&& j==1)
        a(i,j+1)=1;
        a(i,j)=d;
        end
        if(i<n&&j<n&&i>1) 
            if(i==j)
                a(i,j)=d;
               a(i,j-1)=1;
               a(i,j+1)=1;
            end
        end
       if(i==n&&j==n)
           a(i,j)=d;
           a(i,j-1)=1;    
        end
    end
end
g=input('Digite vi, vm, vf: ');
b(1)=g(1);
for i=2:n-1
    b(i)=g(2);
end
b(n)=g(3);
b=b';
s=a\b;
disp(s);
else
 %------------------------------
 n=input('Digite el tamaño de la matriz: ');
d=input('Digite valor de la diagonal: ');
for i=1:n
    for j=1:n
        if(i==1&& j==1)
        a(i,j+1)=1;
        a(i,j)=d(1);
        end
        if(i<n&&j<n&&i>1) 
            if(i==j)
                a(i,j)=d(i);
               a(i,j-1)=1;
               a(i,j+1)=1;
            end
        end
       if(i==n&&j==n)
           a(i,j)=d(1);
           a(i,j-1)=1;    
        end
    end
end
g=input('Digite vi, vm, vf: ');
b(1)=g(1);
for i=2:n-1
    b(i)=g(2);
end
b(n)=g(3);
b=b';
s=a\b;
disp(s);
    
end