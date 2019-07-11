% mirar comentarios
function [t,y,s,e]=trapecio(inter,y0,n)
t(1)=inter(1); y(1)=y0;
h=(inter(2)-inter(1))/n;
for i=1:n
t(i+1)=t(i)+h;
y(i+1)=trapstep(t(i),y(i),h);
s(i+1)=s1(t(i+1));
e(i+1)=abs((i+1)-y(i+1));
end
hold on;
plot(t,y)
grid on;
plot(t,s)

function y=trapstep(t,y,h)
y=y+h/2*(ydot(t,y)+ydot(t+h,y+h*ydot(t,y)));

function z=ydot(t,y)
z = t;

function sr=s1(t)
%lado dercho
%edo de geogebra edo[y,y0]
sr=1/2*t^2+1;