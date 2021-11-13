clear all; clc; close all;

x=0:10;
y=[-10.41,-4.03,-10.00,-0.17,5.12,14.05,19.36,34.01,55.10,94.54,96.47];

n=length(x);
z=[n,sum(x),sum(x.^2);sum(x),sum(x.^2),sum(x.^3);sum(x.^2),sum(x.^3),sum(x.^4)];
Y=[sum(y);sum(x.*y);sum(x.^2.*y)];
A=inv(z)*Y;
yb=mean(y);
St=sum((y-yb).^2);
Sr=sum((y-(A(1)+A(2)*x+A(3)*x.^2)).^2);
r2=(St-Sr)/St;
figure,plot(x,y,'o',x,A(1)+A(2)*x+A(3)*x.^2,'.-')