close all; clc; clear all;
syms x xd;
deriv=[log(cos(x)); diff(log(cos(x)), x); diff(diff(log(cos(x)), x), x); diff(diff(diff(log(cos(x)), x), x), x); diff(diff(diff(diff(log(cos(x)), x), x), x),x); diff(diff(diff(diff(diff(log(cos(x)), x), x), x),x), x); diff(diff(diff(diff(diff(diff(log(cos(x)), x), x), x),x), x), x); diff(diff(diff(diff(diff(diff(diff(log(cos(x)), x), x), x),x), x), x), x)];
N=8; %7차 근사
for kk=1:N
terms(kk)=deriv(kk)*(xd-x)^(kk-1)/factorial(kk-1) % 테일러 급수
order(kk)=kk-1; % order
estival(kk)=sum(terms); 
end
%행의 순서대로 1차 에서 7차까지 나타냈습니다.