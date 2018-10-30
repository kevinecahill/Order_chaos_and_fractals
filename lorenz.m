clear all
close all
clc
fs = 14; sf = 16; ts = 12;

x0 = [ 0 8 0]; tspan=[0,300];
OPTIONS = odeset('RelTol', 1e-5,'AbsTol', 1e-8);
[t,x]=ode45(@lorentz,tspan,x0,OPTIONS);
plot(x(:,1),x(:,3),'k-','LineWidth',0.001);

%title('Lorenz butterfly','fontsize',ts)
%textt='Lorenz butterfly';
%title(textt,'Interpreter','latex','fontsize',sf)
textx='\(x\)';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='\(z\)';
ylabel(texty,'Interpreter','latex','fontsize',sf)

print -dpdf lorenzbw
print -deps /Users/kevin/papers/math/lorenzbw


function xprime = lorentz(t,x);
sig = 10;
beta = 8/3;
rho=28;
xprime=[-sig*x(1) + sig*x(2); rho*x(1) - x(2) - x(1)*x(3); - beta*x(3) ...
    + x(1)*x(2)]; end 