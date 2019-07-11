%Program : M?todo de Runge-Kutta punto medio para solucionar problemas de valor inicial. 
%Utilice ydot.m para evaluar el lado derecho de la ecuaci?n diferencial.
% Entradas: Intervalo, Valor inicial y0, n?mero de pasos n.
% Salida: valores t, soluci?n y.
% Ejemplo Usado: y=RungeKutta2([0 1],1,10);
function [t,y]=RungeKutta2(inter,y0,n)
t(1)=inter(1); y(1)=y0;
h=(inter(2)-inter(1))/n;
for i=1:n
  t(i+1)=t(i)+h;
  y(i+1)=RungeKuttastep(t(i),y(i),h);
end
plot(t,y)

function y=RungeKuttastep(t,y,h)
y=y+h*ydot(t+h/2,y+(h/2)*ydot(t,y));

function z=ydot(t,y)
%Lado derecho de la ecuaci?n diferencial 
z = t*y+t^3;