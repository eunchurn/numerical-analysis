close all; clc; clear all;
xi=0; % 멕로린 급수이므로 0
deriv=[cos(xi) -sin(xi) -cos(xi) sin(xi)]; % derivative values of f(x)
derivs=repmat(deriv ,1,2); % 반복
%% 테일러 급수
xd=pi/3; % 찾을 값
N=6; %6회 까지만 하겠습니다.
for kk=1:N
terms(kk)=derivs(kk)*(xd)^(kk -1)/factorial(kk -1); % 테일러 급수
order(kk)=kk -1; % order
estival(kk)=sum(terms); % 근사값
et(kk)=(cos(xd)-estival(kk))/cos(xd); % 절단오차(상대오차)
end
%% Prrint Result
fid=fopen('no1.txt','w');
header={'차수','근사값','절단오차(상대오차)'};
fprintf(fid ,'%s \t %s \t %s \n',' 차수 ','  근사값 ','절단오차(상대오차)  ');
for kk=1:N
fprintf(fid ,'\t %d \t %.9f \t %0.2e \n',order(kk),estival(kk),et(kk));
end
fclose(fid);
%% Show Result
type no1.txt