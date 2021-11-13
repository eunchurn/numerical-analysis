clear all; clc; close all;

x=0:1:10;

y=5-9*x+2*x.^2+10*randn(1,length(x));

% figure,plot(x,y,'o:')
sprintf('%d&',x)
sprintf('%.2f&',y)