clear all
close all
clc
fs = 14; sf = 16;
load popa.dat

plot(popa(:,1), popa(:,2),'.k','MarkerSize',0.01)

textx='\(r\)';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='\( x_j\)';
ylabel(texty,'Interpreter','latex','fontsize',sf)

print -deps /Users/kevin/papers/math/popmap
