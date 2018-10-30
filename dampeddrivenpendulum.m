clear all
close all
clc
sf = 16; 

x0 = [0 0 0]; 
tspan = 0:2*pi:2*pi*100000;
OPTIONS = odeset('RelTol', 1e-5,'AbsTol', 1e-8);
[t,x]=ode45(@xdot,tspan,x0,OPTIONS);

plot(mod(abs(x(:,2)),2*pi).*sign(x(:,2)),x(:,1),'k.','MarkerSize',0.06);
axis([-pi pi -1 3.5])
%textt="Poincar{\'{e}} map of damped driven pendulum";
%title(textt,'Interpreter','latex','fontsize',sf)
textx='\(\theta\)';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='\( \dot \theta \)';
ylabel(texty,'Interpreter','latex','fontsize',sf)

print -dpdf dampeddriven
print -deps /Users/kevin/papers/math/dampeddriven

function xprime = xdot(t,x);
F = 2.7;
b = 0.22;
xprime=[F*cos(x(3)) - sin(x(2)) - b* x(1); ...
    x(1); ...
    1];
end 