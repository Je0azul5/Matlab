    clc;
    syms t m s;
    disp('Punto 1')
    
    i=input('Digite 1 para transformar a Laplace, 0 para la inversa: ');
    if(i==1)
        f= input('digite funcion: ');
        F=laplace(f);
        pretty(F);
    end
    if(i==0)
        g= input('digite funcion a destransformar: ');
        G=ilaplace(g);
        pretty(G);
    end