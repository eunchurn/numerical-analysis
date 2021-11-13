clear all; clc; close all;

lb=[2 0.01];
ub=[100000 100000];
x0=lb;

options = optimset('Algorithm','active-set','MaxFunEvals',10000);

[x,fval]=fmincon(@pricep,x0,[],[],[],[],lb,ub,@pricecon,options);

n=ceil(x(1));
r=x(2);
z0=100;     % m
g=9.8;      % m/sec^2
kc=200;     % kg/(s*m)^2
Mt=100000;  % kg
A=2*pi*r^2; % m^2
m=Mt/n;
c=kc*A;
C=pricep([n,r]);
t=fminbnd(@(t) abs(fdist(t,g,m,c,z0)),0,10000);
gl=fdist(t,g,m,c,z0);
v=g*m/c*(1-exp(-(c/m)*t));

disp(['n : ',num2str(n)])
disp(['Radius of parachute (m) : ',num2str(r)])
disp(['Drag coefficient (kg/sec) : ',num2str(c)])
disp(['Mass per each (kg) : ',num2str(m)])
disp(['Arrival time (sec) : ',num2str(t)])
disp(['Arrival velocity (m/sec) : ',num2str(v)])
disp(['Unit price (KRW/EA) : ',num2str(ceil(C/n))])
disp(['Total price (KRW) : ',num2str(ceil(C))])