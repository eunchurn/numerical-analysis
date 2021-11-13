clear all; clc; close all;

xr=0;
ii=0;
while 1
    ii=ii+1
    xrold=xr;
    xr=f(xr)+xr;
    ea=abs((xr-xold)/xr);
    if ea<0.0001
        break;
    end
end