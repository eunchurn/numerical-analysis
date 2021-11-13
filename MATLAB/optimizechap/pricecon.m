function [con,ceq]=pricecon(x)

n=x(1);
r=x(2);
z0=100;

kc=200;    % kg/(s*m)^2
Mt=100000; % kg
va=20;     % m/sec
g=9.8;     % m/sec^2

A=2*pi*r^2;

m=Mt/n;
c=kc*A;
T=fminbnd(@(t) abs(fdist(t,g,m,c,z0)),0,10000);
gl=fdist(T,g,m,c,z0);
v=g*m/c*(1-exp(-(c/m)*T));
con(1)=abs(v)-va;
con(2)=abs(gl)-0.001;
ceq=[];