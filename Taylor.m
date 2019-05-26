clc;

f = exp(x)*sin(2*x)*cos(x);
n= 6;
 
for i=1:n
   j=  taylor(f,'ExpansionPoint', 1/2, 'Order', i);
   grid on;
   ezplot(j)
   hold on
end
grid on;
   
ezplot(f)
disp(j);
