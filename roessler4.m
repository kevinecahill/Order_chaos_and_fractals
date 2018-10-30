clear all
close all
clc
fs = 14; sf = 16; bf = 40;

x0 = [ 0 0 0]; 
tspan=[0,10000];
OPTIONS = odeset('RelTol', 1e-5,'AbsTol', 1e-8);
[t,x]=ode45(@rossler,tspan,x0,OPTIONS);
i2 = length(t)
i1 = i2 - 10000
i = i1:1:i2;
plot(x(i,1),x(i,2),'k-','LineWidth', 1);

%textt='A four-loop limit cycle of the  R{\"{o}}ssler system';
%title(textt,'Interpreter','latex','fontsize',sf)
textx='\(x\)';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='\(y\)';
ylabel(texty,'Interpreter','latex','fontsize',sf)
text('Interpreter','latex','String','\( c = 4\)','Position',[5,6],'FontSize',bf)
axis([-8 10 -9 8])
print -dpdf roessler4bw
print -deps /Users/kevin/papers/math/roessler4bw


function xprime = rossler(t,x);
a = 0.2;
b = 0.2;
c = 4;
xprime=[ - x(2) - x(3); x(1) + a*x(2) ; b + x(3)*(x(1) - c) ];
end 