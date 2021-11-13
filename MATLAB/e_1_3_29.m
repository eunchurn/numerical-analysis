clear all; clc; close all;

h=0.00001;
x=-10:h:10;
y(1)=0.1;
for kk=1:length(x)-1
    y(kk+1)=y(kk)+(-x(kk)+sqrt(x(kk)^2+y(kk)^2))*h/y(kk);
end

figure,plot(x,y)
