clear all
close all
clc
fs = 14; sf = 16; tf = 18;

x0 = [0 0 0]; 
tspan=[0,10000];
OPTIONS = odeset('RelTol', 1e-5,'AbsTol', 1e-8);
[t,x]=ode45(@rossler,tspan,x0,OPTIONS);
i2 = length(t)
i1 = i2 - 10000
i = i1:1:i2;
plot(x(i,1),x(i,2),'k-','LineWidth',0.0001);
%textt='A strange attractor of the R{\"{o}}ssler system';
%title(textt,'Interpreter','latex','fontsize',sf)
textx='\(x\)';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='\(y\)';
ylabel(texty,'Interpreter','latex','fontsize',sf)
text('Interpreter','latex','String','\( c = 5\)','Position',[8.0,6],'FontSize',sf)
axis([-10 12 -11 8])
print -dpdf roessler5bw
print -deps /Users/kevin/papers/math/roessler45bw
function xprime = rossler(t,x);
a = 0.2;
b = 0.2;
c = 4.5;
xprime=[ - x(2) - x(3); x(1) + a*x(2) ; b + x(3)*(x(1) - c) ];
end 