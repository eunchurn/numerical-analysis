close all; clc; clear all;
xi=0; % �߷θ� �޼��̹Ƿ� 0
deriv=[cos(xi) -sin(xi) -cos(xi) sin(xi)]; % derivative values of f(x)
derivs=repmat(deriv ,1,2); % �ݺ�
%% ���Ϸ� �޼�
xd=pi/3; % ã�� ��
N=6; %6ȸ ������ �ϰڽ��ϴ�.
for kk=1:N
terms(kk)=derivs(kk)*(xd)^(kk -1)/factorial(kk -1); % ���Ϸ� �޼�
order(kk)=kk -1; % order
estival(kk)=sum(terms); % �ٻ簪
et(kk)=(cos(xd)-estival(kk))/cos(xd); % ���ܿ���(������)
end
%% Prrint Result
fid=fopen('no1.txt','w');
header={'����','�ٻ簪','���ܿ���(������)'};
fprintf(fid ,'%s \t %s \t %s \n',' ���� ','  �ٻ簪 ','���ܿ���(������)  ');
for kk=1:N
fprintf(fid ,'\t %d \t %.9f \t %0.2e \n',order(kk),estival(kk),et(kk));
end
fclose(fid);
%% Show Result
type no1.txt