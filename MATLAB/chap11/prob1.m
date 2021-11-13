clear all; clc; close all;

mu=21.75;
sigma=1.5;
% data=normrnd(mu,sigma,20,1);
% data=mu+sigma*randn(5,4);
data=[21.867,19.672,24.612,22.785;
23.736,22.215,21.933,22.583;
21.430,21.375,23.320,20.069;
21.548,22.505,21.409,19.450;
19.992,20.411,21.506,20.103];

vdata=reshape(data,20,1);
m=mean(vdata);
sy=std(vdata);

m-1.96*sy
m+1.96*sy