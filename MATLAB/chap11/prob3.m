clear all; clc; close all;

x=0:10;
y=[-10.41,-4.03,-10.00,-0.17,5.12,14.05,19.36,34.01,55.10,94.54,96.47];

n=length(x);
a1=(n*sum(x.*y)-sum(x)*sum(y))/(n*sum(x.^2)-sum(x)^2);
yb=mean(y);
a0=yb-a1*mean(x);
St=sum((y-yb).^2);
Sr=sum((y-(a0+a1*x)).^2);
r2=(St-Sr)/St;
figure,plot(x,y,'o',x,a1*x+a0,'.-')

