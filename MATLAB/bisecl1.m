clear all; clc; close all;

xl=12;
xu=16;
ii=0;

while 1
    ii=ii+1;
    xr=(xl+xu)/2;
    id=f(xl)*f(xr);
    
    if id<0
        xu=xr;
    elseif id>0
        xl=xr;
        
    else
        break;
    end
    x(ii)=xr;
end