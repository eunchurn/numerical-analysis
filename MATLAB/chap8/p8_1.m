clear all; clc; close all;

x=0:0.001:5.5;

y1=-3/2*x+9;
y2=1/2*x+1;


figure,plot(x,y1,'-k',x,y2,'-k','LineWidth',1.5)
xlim([0 6])
ylim([0 9.5])

y3=1/2*x+1;
y4=1/2*x+1/2;

y5=2.3/5*x+1.1;
y6=1/2*x+1;

figure
subplot(131)
plot(x,y3,'-k',x,y4,'-k','LineWidth',1.5)
xlim([0 6])
ylim([0 4])
subplot(132)
plot(x,y3,'-k','LineWidth',1.5)
xlim([0 6])
ylim([0 4])
subplot(133)
plot(x,y5,'-k',x,y6,'-k','LineWidth',1.5)
xlim([0 6])
ylim([0 4])