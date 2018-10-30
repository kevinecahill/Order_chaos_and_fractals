clear all
close all
clc
sf = 16; ts=12;

om = 0; mu = 0.015625; a = 0; 
x0 = [ 0 6 0 ]; tspan=[0,10000];
OPTIONS = odeset('RelTol', 1e-11,'AbsTol', 1e-11);
[t,x]=ode45(@(t,x) vdP(t,x, mu, a, om),tspan,x0,OPTIONS);
plot(x(:,2),x(:,1),'k-','LineWidth',0.0001);
hold on
%title('Limit cycle of van der Pol oscillator','fontsize',ts)
%title(textt,'Interpreter','latex','fontsize',sf)
textx='\(y\)';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='\(\dot y\)';
ylabel(texty,'Interpreter','latex','fontsize',sf)
print -dpdf vdPol1000008thin
print -deps /Users/kevin/papers/math/vdPol10000064thin

om = 0; mu = 0.125; a = 0; 
x0 = [ 0 0.01 0 ]; tspan=[0,10000];
OPTIONS = odeset('RelTol', 1e-11,'AbsTol', 1e-11);
[t,x]=ode45(@(t,x) vdP(t,x, mu, a, om),tspan,x0,OPTIONS);
figure;
plot(x(:,2),x(:,1),'k-','LineWidth',0.0001);
hold on
%title('Limit cycle of van der Pol oscillator','fontsize',ts)
%textt='Limit cycle of van der Pol oscillator';
%title(textt,'Interpreter','latex','fontsize',sf)
textx='\(y\)';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='\(\dot y\)';
ylabel(texty,'Interpreter','latex','fontsize',sf)

print -dpdf vdPol1000008th01out
print -deps /Users/kevin/papers/math/vdPol1000008th01out

function xprime = vdP(t, x, mu, a, om);

xprime=[ -x(2) - mu*( x(2)^2 - 1 )*x(1) + a*sin(om*x(3));  ...
    x(1); ...
       1; ]; 
end 

