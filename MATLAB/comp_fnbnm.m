clear all; clc; close all;

load e5d6_bisec
bet=et*100;
load e5d6_fpm
fet=et*100;
load e5d6_mfpm
mfet=et*100;

N=11;
figure
subplot(121)
semilogy(1:N,abs(bet(1:N)),'.-k',1:N,abs(fet(1:N)),'.-b',1:N,abs(mfet(1:N)),'.-r')
xlabel('Iteration')
ylabel('True percent relative error (%)')
grid on
legend('Bisection','False Position','Modified False Position','Location','SouthWest')
subplot(122)
semilogy(1:length(bet),abs(bet),'.-k',1:length(fet),abs(fet),'.-b',1:length(mfet),abs(mfet),'.-r')
xlabel('Iteration')
ylabel('True percent relative error (%)')
grid on
legend('Bisection','False Position','Modified False Position','Location','SouthWest')