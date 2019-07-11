function [t,y,s,e]=euler1(inter,y0,n)
t(1)=inter(1); y(1)=y0;
h=(inter(2)-inter(1))/n;
for i=1:n
t(i+1)=t(i)+h;
y(i+1)=eulerstep(t(i),y(i),h);
s(i+1)=s1(t(i+1));
e(i+1)=abs((i+1)-y(i+1));
end
plot(t,y)
grid on;
hold on;
plot(t,s)

function y=eulerstep(t,y,h)
y=y+h*ydot(t,y);

function z=ydot(t,y)
z = t;

function sr=s1(t)
%edo de geogebra edo[y,y0]
sr=1/2*t^2+1;