clear all; clc; close all;

x1=-10:0.5:10;
x2=-10:0.5:10;

for kk=1:length(x1)
    for jj=1:length(x2)
        P(kk,jj)=(5-(x1(kk)-2)^2-2*(x2(jj)-1)^2);
    end
end
xx1=[-10 -10 10 10];
xx2=-1/4*x1+3/4;
minP=min(min(P));
maxP=max(max(P));
zz=[minP maxP maxP minP];
figure
surf(x1,x2,P)
xlabel('x_{1}')
ylabel('x_{2}')
zlabel('P')
hold on
plot(x1,xx2,'-k')
% rectangle('Position',xx1,xx2,zz)
