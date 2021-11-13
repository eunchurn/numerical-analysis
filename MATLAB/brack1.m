clear all; clc; close all;
c=4:1:20;

for kk=1: length(c)
    f(kk)=9.8*68.1/c(kk)*(1-exp(-10*c(kk)/68.1)) -40;
end

figure
plot(c,f,'-ok')
xlabel('c')
ylabel('f(c)')
xlim([0 24])
ylim([-10 40])
grid on