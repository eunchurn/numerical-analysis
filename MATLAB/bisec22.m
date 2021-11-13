clear all; clc; close all;

xl=0;   % lower bound
xu=1.3;   % upper bound
ii=0;    % initial iteration value
xt=1; % true x
fl=f(xl);
while 1
    ii=ii+1;          % increment iteration value
    xr=(xl+xu)/2;     % bisection
    fr=f(xr);
    id=fl*fr;
    if id<0
        xu=xr;        % assume xu to xr
    elseif id>0
        xl=xr;        % assume xl to xr 
        fl=fr;        % replace fl to fr
    end
    x(ii)=xr;               % calculated x vector
    et(ii)=abs((xt-xr)/xt); % calculated error vector
    if et(end)<=0.0001
        break;        % break loop
    end
end