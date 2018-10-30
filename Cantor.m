clear all
close all
clc

n = 0
h = 1 - n*.25;
x1 = 0;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
hold on
n = 1
h = 1 - n*.25;
x1 = 0;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = x1 + 2/3^n
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
n = 2
h = 1 - n*.25;
x1 = 0;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = x1 + 2/3^n
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = 2/3;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = 2/3 + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 

n = 3
h = 1 - n*.25;
x1 = 0;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = 2/3^n
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
y1 = x1;

x1 = 2/3^(n-1);
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
y2 = x1;
x1 = 2/3^(n-1) + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
y3 = x1;

x1 = 2/3;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
y4 = x1;
x1 = 2/3 + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
y5 = x1;

x1 = 2/3 + 2/3^(n-1);
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
y6 = x1;
x1 = 2/3 + 2/3^(n-1) + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
y7 = x1;

n=4
h = 1 - n*.25;
x1 = 0;
x2 = 1/3^n;
x = x1:.001:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 

x1 = y1;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = x1 + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 

x1 = y2;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = x1 + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 

x1 = y3;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1)
x1 = x1 + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 

x1 = y4;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = x1 + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 

x1 = y5;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = x1 + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 

x1 = y6;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = x1 + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 

x1 = y7;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
x1 = x1 + 2/3^n;
x2 = x1 + 1/3^n;
x = x1:.01:x2;
y = h*ones(size(x));
plot(x,y,'k-','linewidth',1) 
pbaspect([3 1 1])
axis([ -.05, 1.05 -.2 1.2])
%textt='Toward the Cantor Set'
set(gca,'YTickLabel',[]);
sf = 16;
%title(textt,'Interpreter','latex','FontSize',sf)
print -dpdf cantor.pdf
print -deps /Users/kevin/papers/math/cantor







