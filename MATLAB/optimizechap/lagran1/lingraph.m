clear all; clc; close all;

x1=-1:0.01:10;
x21=7-7/11*x1;
x22=10-10/8*x1;
x23=6*ones(length(x1),1);
ymin=min([min(x21),min(x22),min(x23)]);
ymax=max([max(x21),max(x22),max(x23)]);

z1=-150/175*x1;
z2=600/175-150/175*x1;
z3=1400/175-150/175*x1;

figure
plot(x1,x21,'LineWidth',1.5)
grid on
xlim([-1 10])
ylim([ymin ymax])
xlabel('x_1'),ylabel('x_2')

figure
plot(x1,x21,x1,x22,'LineWidth',1.5)
grid on
xlim([-1 10])
ylim([ymin ymax])
xlabel('x_1'),ylabel('x_2')

figure
plot(x1,x21,x1,x22,x1,x23,'LineWidth',1.5)
grid on
xlim([-1 10])
ylim([ymin ymax])
xlabel('x_1'),ylabel('x_2')

figure
plot(x1,x21,x1,x22,x1,x23,[9 9],[ymin ymax],'LineWidth',1.5)
grid on
xlim([-1 10])
ylim([ymin ymax])
xlabel('x_1'),ylabel('x_2')

figure
plot(x1,x21,x1,x22,x1,x23,[9 9],[ymin ymax],x1,zeros(length(x1),1),'LineWidth',1.5)
grid on
xlim([-1 10])
ylim([ymin ymax])
xlabel('x_1'),ylabel('x_2')

figure,plot(x1,x21,x1,x22,x1,x23,[9 9],[ymin ymax],x1,zeros(length(x1),1),[0 0],[ymin ymax],'LineWidth',1.5)
grid on
xlim([-1 10])
ylim([ymin ymax])
xlabel('x_1'),ylabel('x_2')

figure,plot(x1,x21,x1,x22,x1,x23,[9 9],[ymin ymax],x1,zeros(length(x1),1),[0 0],[ymin ymax],'LineWidth',1.5)
grid on
xlim([-1 10])
ylim([ymin ymax])
xlabel('x_1'),ylabel('x_2')
hold on
plot(x1,z1,'--k',x1,z2,'--k',x1,z3,'--k','LineWidth',2)