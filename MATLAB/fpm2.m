clear all; clc; close all;

xl=12;   % lower bound
xu=16;   % upper bound
ii=0;    % initial iteration value
xt=1.478020383166106e+001; % true x
il=0;iu=0;
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
        iu=0;         % set zero iteration of upper bound
        il=il+1;      % count iteration of lower bound
        if il>=2, fl=fl/2; end % modify lower function value
    elseif id>0
        xl=xr;        % assume xu to xl 
        fl=f(xl);     % replace fl to f(xl)
        il=0;         % set zero iteration of lower bound
        iu=iu+1;      % count iteration of upper bound
        if iu>=2, fu=fu/2; end % modify upper function value
    else
        break;        % break loop
    end
    x(ii)=xr;         % calculated x vector
    et(ii)=(xt-xr)/xt;% calculated error vector
end