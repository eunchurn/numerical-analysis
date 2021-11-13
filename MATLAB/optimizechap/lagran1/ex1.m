clear all; clc; close all;

x1=-30:1:30;
x2=-30:1:30;
f=2*x1.^2-x1.^2;

for kk=1:length(x1)
    for jj=1:length(x2)
        P(kk,jj)=2*x1(kk)^2-x2(jj)^2;
    end
end

figure
surf(x1,x2,P)