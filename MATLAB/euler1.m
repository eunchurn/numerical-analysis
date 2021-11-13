clear all; clc; close all;
den=1;
y=2;
for kk=1:100
    num=(pi*i)^kk
    den=den*kk;
    y=y+num/den;
end