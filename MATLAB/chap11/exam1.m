clear all; clc; close all;

xdata=[1:10]';
ydata=xdata+randn(length(xdata),1);

x1=lsqcurvefit(@(x1,xdata) x1(1)*xdata+x1(2),[0;0],xdata,ydata);
y1=x1(1)*xdata+x1(2);
xq=[1:0.1:10]';
yq1=interp1(xdata,ydata,xq);
yq2=interp1(xdata,ydata,xq,'spline');
ymin=min([min(y1),min(yq1),min(yq2)]);
ymax=max([max(y1),max(yq1),max(yq2)]);

figure,plot(xdata,ydata,'or',xdata,y1,'-k','LineWidth',2)
xlim([0 11])
ylim([ymin ymax])
xlabel('x'),ylabel('f(x)')
print(gcf,'-depsc2','pt5-1a.eps')
figure,plot(xdata,ydata,'or',xq,yq1,'-k','LineWidth',2)
xlim([0 11])
ylim([ymin ymax])
xlabel('x'),ylabel('f(x)')
print(gcf,'-depsc2','pt5-1b.eps')
figure,plot(xdata,ydata,'or',xq,yq2,'-k','LineWidth',2)
xlim([0 11])
ylim([ymin ymax])
xlabel('x'),ylabel('f(x)')
print(gcf,'-depsc2','pt5-1c.eps')