close all; clc; clear all;
syms x xd;
deriv=[log(cos(x)); diff(log(cos(x)), x); diff(diff(log(cos(x)), x), x); diff(diff(diff(log(cos(x)), x), x), x); diff(diff(diff(diff(log(cos(x)), x), x), x),x); diff(diff(diff(diff(diff(log(cos(x)), x), x), x),x), x); diff(diff(diff(diff(diff(diff(log(cos(x)), x), x), x),x), x), x); diff(diff(diff(diff(diff(diff(diff(log(cos(x)), x), x), x),x), x), x), x)];
N=8; %7�� �ٻ�
for kk=1:N
terms(kk)=deriv(kk)*(xd-x)^(kk-1)/factorial(kk-1) % ���Ϸ� �޼�
order(kk)=kk-1; % order
estival(kk)=sum(terms); 
end
%���� ������� 1�� ���� 7������ ��Ÿ�½��ϴ�.