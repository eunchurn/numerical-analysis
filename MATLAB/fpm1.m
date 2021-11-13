clear all; clc; close all;

xl=12;   % lower bound
xu=16;   % upper bound
ii=0;    % initial iteration value
xt=1.478020383166106e+001; % true x
fl=f(xl);
fu=f(xu);
while 1
    ii=ii+1;          % increment iteration value
    xr=xu-(fu*(xl-xu))/(fl-fu);
    fr=f(xr);
    id=fl*fr;
    if id<0
        xu=xr;        % assume xu to xr
        fu=f(xu);     % replace fu to f(xu)
    elseif id>0
        xl=xr;        % assume xu to xl 
        fl=f(xl);     % replace fl to f(xl)
    else
        break;        % break loop
    end
    x(ii)=xr;         % calculated x vector
    et(ii)=(xt-xr)/xt;% calculated error vector
end