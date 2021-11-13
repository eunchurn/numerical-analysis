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
    col(ii,:)=[xl,fl];
    cou(ii,:)=[xr,fr];
    x(ii)=xr;               % calculated x vector
    et(ii)=abs((xt-xr)/xt); % calculated error vector
    if et(end)<=0.0001
        break;        % break loop
    end
end

xx=0:0.001:1.3;
for kk=1:length(xx)
    ff(kk)=f(xx(kk));
end
figure,plot(xx,ff,'-r',[xx(1) xx(end)],[0 0],'-k','LineWidth',1.5)
hold on
grid on
xlabel('x')
ylabel('f(x)')
title('Bisection Method Processing of f(x)=x^{10}-1')
for kk=1:ii
%     plot([col(kk,1),cou(kk,1)],[col(kk,2),cou(kk,2)],'.:b')
    plot([x(kk) x(kk)],[0 f(x(kk))],'.--b')
end
print(gcf,'-depsc2','bisecprocplot')