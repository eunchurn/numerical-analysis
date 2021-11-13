close all; clc; clear all;
xi=2.5 %1과 3의 사이값인 2.5를 선택했습니다.
deriv=[xi/(xi-1) -1/((xi-1)^2) 2/((xi-1)^3) -6/((xi-1)^4) 24/((xi-1)^5) -120/((xi-1)^6)]; % 미분값
derivs=repmat(deriv ,1,2); % repeatation of derivative function values
%% 테일러 급수
xd=3; % 찾을 값
N=6; %5차 근사
for kk=1:N
terms(kk)=derivs(kk)*(xd-xi)^(kk-1)/factorial(kk-1); % 테일러 급수
order(kk)=kk-1; % order
estival(kk)=sum(terms); % 근사값
et(kk)=(cos(xd)-estival(kk))/cos(xd); % 절단오차(상대오차)
end
%% Prrint Result
fid=fopen('no2.txt','w');
header={'차수','근사값','절단오차(상대오차)'};
fprintf(fid ,'%s \t %s \t %s \n',' 차수 ','  근사값 ','절단오차(상대오차)  ');
for kk=1:N
fprintf(fid ,'\t %d \t %.10f \t %0.2e \n',order(kk),estival(kk),et(kk));
end
fclose(fid);
%% Show Result
type no2.txt