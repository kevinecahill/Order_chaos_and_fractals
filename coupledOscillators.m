clear all
close all
clc
fs = 14; sf = 16; ts = 12;
m1 = 1.0; m2 = 1.0; om1 = 1.0; om2 = 1/2; lambda = 1/2;

x0 = [ 0 1 0 1]; tspan=[0,100];
OPTIONS = odeset('RelTol', 1e-11,'AbsTol', 1e-11);
[t,x]=ode45(@(t,x) harm(t,x,m1,m2,om1,om2,lambda),tspan,x0,OPTIONS);
%i2 = length(t); i1 = round(0.99*i2); i = i1:1:i2;
plot(x(:,1),x(:,2),'k-','LineWidth',0.0001);
%title('Two coupled nonlinear oscillators (100 timesteps)','fontsize',ts)
textx='\(q_1\)';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='\(p_1\)';
ylabel(texty,'Interpreter','latex','fontsize',sf)
axis([-.9 0.9 -1.1 1.1])
print -dpdf HOF450101100bw
print -deps HOF450101100bw
print -deps /Users/kevin/papers/math/HOF450101100bw

fs = 14; sf = 16; ts = 12;
m1 = 1.0; m2 = 1.0; om1 = 1.0; om2 = 1/2; lambda = 1/2;

x0 = [ 0 1 0 1]; tspan=[0,500];
OPTIONS = odeset('RelTol', 1e-11,'AbsTol', 1e-11);
[t,x]=ode45(@(t,x) harm(t,x,m1,m2,om1,om2,lambda),tspan,x0,OPTIONS);
%figure;
plot(x(:,1),x(:,2),'k-','LineWidth',0.0001);
%title('Two coupled nonlinear oscillators (500 timesteps)','fontsize',ts)
tlength = length(t)
%x(length(t),:)
textx='\(q_1\)';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='\(p_1\)';
ylabel(texty,'Interpreter','latex','fontsize',sf)
axis([-.9 0.9 -1.1 1.1])
print -dpdf HOF450101500bw
print -deps HOF450101500bw
print -deps /Users/kevin/papers/math/HOF450101500bw

h = hamiltonian(x,m1,m2,om1,om2,lambda);

function xprime = harm(t,x,m1,m2,om1,om2,lambda);

xprime=[x(2)/m1; ...
    -m1*om1^2*x(1) - 2*m1*om1*om2*( x(1) - x(3) ) ...
    - lambda*(4*x(1)^3*x(3)^2 + 2*x(1)*x(3)^4); ...
       x(4)/m2; ...
    -m2*om2^2*x(3) - 2*m1*om1*om2*( x(3) - x(1) ) ...
    - lambda*(4*x(3)^3*x(1)^2 + 2*x(3)*x(1)^4)]; 
end 

function h = hamiltonian(x,m1,m2,om1,om2,lambda)
term1 = (x(:,2).^2) / (2*m1);
term2 = (m1*om1.^2) * (x(:,1).^2)/2;
term3 = (x(:,4).^2) / (2*m2);
term4 = (m2*om2.^2) * (x(:,3).^2)/2;
term5 = lambda*(x(:,1).^2).*(x(:,3).^2).* ( x(:,1).^2 + x(:,3).^2 ) ;
term6 = m1*om1*om2*( x(:,1) - x(:,3) ).^2 ;
h = term1 + term2 + term3 + term4 + term5 + term6;
end

