clear all; clc; close all;

f=[-150 -175];
A=[7 11;
    10 8];
b=[77 80];
ub=[9 6];
lb=[0 0];

[x,fval,exitflag,output,lambda] = linprog(f,A,b,[],[],lb,ub);