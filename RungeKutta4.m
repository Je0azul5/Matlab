
function [t,y]=RungeKutta4(inter,y0,n)
t(1)=inter(1); y(1)=y0;
h=(inter(2)-inter(1))/n;
for i=1:n
  t(i+1)=t(i)+h;
  y(i+1)=RungeKuttastep(t(i),y(i),h);
end
plot(t,y)
function s2=ydot2(t,y,h) 
s2 = ydot(t+h/2,y+h/2*ydot(t,y));
function s3=ydot3(t,y,h) 
s3 = ydot(t+h/2,y+h/2*ydot2(t,y,h));
% function s4=ydot4(t,y,h)
% s4 = ydot(t+h,y+h*ydot3(t,y,h));
% 
% function s5=ydot5(t,y,h) %funci?n auxiliar s4
% s5 = ydot(t+h,y+h*ydot4(t,y,h));
% 
% function y=RungeKuttastep(t,y,h)
% y=y+(h/6)*(ydot(t,y)+2*ydot2(t,y,h)+2*ydot3(t,y,h)+ydot4(t,y,h)+ydot5(t,y,h));
function y=RungeKuttastep(t,y,h)
y=y+(h/6)*(ydot(t,y)+4*ydot2(t,y,h)+ydot3(t,y,h));
function z=ydot(t,y)
z = 0.000025*t*(1000-t);