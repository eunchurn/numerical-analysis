clear all; clc; close all;

x=0:0.001:10;

y=0.5*(x+2).^5-20;

figure,plot(x,y,'-b','LineWidth',1.5)
grid on