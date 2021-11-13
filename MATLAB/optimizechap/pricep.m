function C = pricep(x)

n=x(1);
r=x(2);

A=2*pi*r^2;
l=sqrt(2)*r;

c0=1000; % KRW
c1=300;  % KRW/m
c2=50;   % KRW/m^2

C=n*(c0+c1*l+c2*A^2);
