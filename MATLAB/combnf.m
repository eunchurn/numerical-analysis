clear all; clc; close all;

load bisecresult
bet=et*100;
load fpmresult
fet=et*100;
N=11;
figure
subplot(121)
semilogy(1:N,abs(bet(1:N)),'.-k',1:N,abs(fet(1:N)),'.-r')
xlabel('Iteration')
ylabel('True percent relative error (%)')
grid on
legend('Bisection','False Position')
subplot(122)
semilogy(1:length(bet),abs(bet),'.-k',1:length(fet),abs(fet),'.-r')
xlabel('Iteration')
ylabel('True percent relative error (%)')
grid on
legend('Bisection','False Position')