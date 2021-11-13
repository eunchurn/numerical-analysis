clear all; clc; close all;

xl=12;   % lower bound
xu=16;   % upper bound
ii=0;    % initial iteration value
xt=1.478020383166106e+001; % true x
while 1
    ii=ii+1;          % increment iteration value
    xr=(xl+xu)/2;     % bisection
    id=f(xl)*f(xr);
    if id<0
        xu=xr;        % assume xu to xr
    elseif id>0
        xl=xr;        % assume xu to xl 
    else
        break;        % break loop
    end
    x(ii)=xr;         % calculated x vector
    et(ii)=(xt-xr)/xt;% calculated error vector
end