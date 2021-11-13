clear all; clc; close all;

xl=0;   % lower bound
xu=5;   % upper bound
ii=0;    % initial iteration value
xt=2.85; % true x
xr=xl;
fl=f722(xl);
while 1
    ii=ii+1;          % increment iteration value
    ea=(xr-(xl+xu)/2)/xr;
    xr=(xl+xu)/2;     % bisection
    fr=f722(xr);
    txt=sprintf('%d\t%.4f\t%.4f\t%.4f\t%.4f\t%.4f\n',ii,xl,xu,xr,fr,abs(ea));
    disp(txt)
    id=fl*fr;
    if id<0
        xu=xr;        % assume xu to xr
    elseif id>0
        xl=xr;        % assume xl to xr 
        fl=fr;        % replace fl to fr
    end
    x(ii)=xr;               % calculated x vector
    et(ii)=abs((xt-xr)/xt); % calculated error vector
    if abs(ea)<=0.01
        break;        % break loop
    end
end