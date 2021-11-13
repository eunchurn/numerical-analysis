clear all; clc; close all;

xl=0;   % lower bound
xu=1.3;   % upper bound
ii=0;    % initial iteration value
% xt=1.478020383166106e+001; % true x
xt=1;
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
    end
    col(ii,:)=[xl,fl];
    cou(ii,:)=[xu,fu];
    x(ii)=xr;         % calculated x vector
    et(ii)=(xt-xr)/xt;% calculated error vector
    if et(ii)<0.001
        break;
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
title('False Position Method Processing of f(x)=x^{10}-1')
for kk=1:ii
    plot([col(kk,1),cou(kk,1)],[col(kk,2),cou(kk,2)],'.--b')
    plot([x(kk) x(kk)],[0 f(x(kk))],'.:k')
end
print(gcf,'-depsc2','fpmprocplot')