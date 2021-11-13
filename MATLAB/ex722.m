clear all; clc; close all;

x=0:0.001:10;
for kk=1:length(x)
    v(kk)=f722(x(kk));
end

figure,plot(x,-v,'-k')
grid on