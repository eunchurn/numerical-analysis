clear all; clc; close all;

%% Parameters
m=68.1; % kg
c=0.232; % kg/m
g=9.8;  % kg/s

%% Calculation
t=0:0.0001:20; % time of exact solution

dt=2;          % dt of numerical solution
t1=0:dt:20;    % time of numerical solution
v=sqrt((m*g)/c)*tanh(sqrt((g*c)/m)*t); % exact solution

v1(1)=0;       % initial velocity of numerical solution
for kk=1:length(t1)
    v1(kk+1)=v1(kk)+(g-c/m*v1(kk)^2)*dt;
end

ref=ones(length(t),1)*v(end); % terminal velocity

%% Display result
figure
plot(t,v,'-k',t1,v1(1:end-1),'o--b',t,ref,':r','linewidth',1.5)
text(14,55,'Terminal velocity','FontWeight','bold')
grid on
legend('analytical solution','numerical solution','Location','best')
xlabel('Time (second)')
ylabel('Velocity (m/s)')