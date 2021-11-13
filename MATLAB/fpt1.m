clear all; clc; close all;

xr=0.5;
ii=0;
ea=1;
while 1
    ii=ii+1;
    k(ii)=ii-1;
    xk(ii)=xr;
    xrold=xr;
    xr=f3(xr);
    if xr~=0
        ea=abs((xr-xrold)/xr);
    end
    fx(ii,:)=[xr,f3(xr)];
    if ea<0.000001
        break;
    end
end

xx=0:0.0001:3;
ff=f3(xx);

figure,plot(xx,ff,'-k',fx(:,1),fx(:,2),'.r')
hold on
grid on
for kk=1:ii
    plot([fx(kk,1),fx(kk,1)],[0 fx(kk,2)],':r')
    plot([0,fx(kk,1)],[fx(kk,2) fx(kk,2)],':r')
end
plot([xr xr],[0 f3(xr)],'-xk','LineWidth',2)
plot([0 xr],[f3(xr) f3(xr)],'-xk','LineWidth',2)
xlabel('x')
ylabel('g(x)=cos(x)')

figure,plot(k,xk)