clear all
close all
clc
fs = 14; sf = 16;
load HenonMap/bige4.dat;
%h10000qp;
plot(bige4(:,1),bige4(:,2),'k.','markersize',0.1)
%textt='H{\''{e}}non''s strange attractor'
%title(textt,'Interpreter','latex','fontsize',sf)
textx=('$x$')
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='$y$'
ylabel(texty,'Interpreter','latex','fontsize',sf)
axis([-2 2 -2 2])
print -dpdf bighenonbw
print -deps bighenonbw
print -deps /Users/kevin/papers/math/bighenonbw