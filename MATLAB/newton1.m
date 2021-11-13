clear all; clc; close all;

x(1)=0.5;
N=5;
for kk=1:N
    fx(kk)=x(kk)^2-2;
    x(kk+1)=1/2*x(kk)+1/x(kk);
    
end

xx=0.4:0.0001:2.4;
ff=xx.^2-2;

for kk=1:N
    y(:,kk)=2*x(kk)*(xx-x(kk))+x(kk)^2-2;
end

figure,plot(xx,ff,'-k','LineWidth',1.5)
hold on
grid on
for kk=1:N
    plot([x(kk),x(kk)],[0 fx(kk)],':.r','MarkerSize',15)
    plot(xx,y(:,kk),'-b')
end
xlabel('x')
ylabel('f(x)')
title('Newton-Raphson method applied to f(x)=x^2-2')