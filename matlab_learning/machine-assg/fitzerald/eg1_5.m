mu0 = pi*4.e-7;
%all dimensions expressed in meters
Ac = 9e-4; Ag = 9e-4; g = 5e-4; ic = 0.3;
N = 500 ;
%Reluctance of air gap
Rg = g/(mu0*Ag) ;
for n = 1:101
mur(n) = 100 + (100000 - 100)*(n-1)/100;
%Reluctance of core
Rc(n) = ic/(mur(n)*mu0*Ac) ;
Rtot = Rg+Rc(n) ;
%Inductance
L(n) = N^2/Rtot;
end
plot (mur, L)
xlabel('Core relative permeability')
ylabel('Inductance [H] ')
title('Inductance as a fn of core permeability')