clear all; clc; close all;

xi=pi/4; % initial position of x

%% Derivative values of Cosine function
deriv=[cos(xi) -sin(xi) -cos(xi) sin(xi)]; % derivative values of f(x)
derivs=repmat(deriv,1,10); % repeatation of derivative function values

%% Taylor Series Expansion
xd=pi/3; % desired position of x
N=7;
for kk=1:N
    
    terms(kk)=derivs(kk)*(xd-xi)^(kk-1)/factorial(kk-1); % Taylor expansion
    
    order(kk)=kk-1; % order
    estival(kk)=sum(terms); % approximation value
    et(kk)=(cos(xd)-estival(kk))/cos(xd); % truncation error
end
%% Prrint Result
fid=fopen('result.txt','w');
header={'Order','Approx. Val','Et'};
fprintf(fid,'%s \t %s \t %s \n','Order','Approx. Value','Et(%)');
for kk=1:N
    fprintf(fid,'\t %d \t %.9f \t %0.2e \n',order(kk),estival(kk),et(kk));
end
fclose(fid);
%% Show Result
type result.txt