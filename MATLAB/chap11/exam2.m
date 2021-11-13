clear all; clc; close all;

% height = normrnd(50,2,1000,1);             % Simulate heights.
% [mu,s,muci,sci] = normfit(height)
% x=randn(10000,1);
% x=normrnd(6.6,0.097133,10000,1);
ybar=6.6;
sy=0.097133;
x=ybar+sy*randn(10000,1);
xdata=[6.495,6.595,6.615,6.635,6.485,6.555,6.665,6.505,6.435,6.625,6.715,6.655,6.755,6.625,6.715,6.575,6.655,6.605,6.565,6.515,6.555,6.395,6.775,6.685];
[N,X]=hist(xdata,13);
y=normpdf(x,ybar,sy);
figure
bar(X,N,'r')
hold on
plot(x,y,'.k')
xlabel('x')
ylabel('Probability distibution')

ybar=0;
sy=1;
xx=ybar-4*sy:0.0001:ybar+4*sy;
yy=1/(sy*sqrt(2*pi))*exp(-(xx-ybar).^2./(2*sy^2));
s1=1/(sy*sqrt(2*pi))*exp(-1/2);
s2=1/(sy*sqrt(2*pi))*exp(-2);
figure,plot(xx,yy,'-k','LineWidth',2)
grid on
disp(ybar-1.96*sy)
disp(ybar+1.96*sy)