close all; clc; clear all;
xi=2.5 %1�� 3�� ���̰��� 2.5�� �����߽��ϴ�.
deriv=[xi/(xi-1) -1/((xi-1)^2) 2/((xi-1)^3) -6/((xi-1)^4) 24/((xi-1)^5) -120/((xi-1)^6)]; % �̺а�
derivs=repmat(deriv ,1,2); % repeatation of derivative function values
%% ���Ϸ� �޼�
xd=3; % ã�� ��
N=6; %5�� �ٻ�
for kk=1:N
terms(kk)=derivs(kk)*(xd-xi)^(kk-1)/factorial(kk-1); % ���Ϸ� �޼�
order(kk)=kk-1; % order
estival(kk)=sum(terms); % �ٻ簪
et(kk)=(cos(xd)-estival(kk))/cos(xd); % ���ܿ���(������)
end
%% Prrint Result
fid=fopen('no2.txt','w');
header={'����','�ٻ簪','���ܿ���(������)'};
fprintf(fid ,'%s \t %s \t %s \n',' ���� ','  �ٻ簪 ','���ܿ���(������)  ');
for kk=1:N
fprintf(fid ,'\t %d \t %.10f \t %0.2e \n',order(kk),estival(kk),et(kk));
end
fclose(fid);
%% Show Result
type no2.txt