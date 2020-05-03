%System parameters
Veq = 1.0;
Eaf = 1.0;
Xeq = .23;
Xs = 1.35;
% Solve for Va as delta varies from 0 to 90 degrees
for n = 1:101
delta(n) = (pi/2.)*(n-1)/100; 
Ia(n) = (Eaf *exp(j*delta(n)) - Veq)/(j* (Xs + Xeq) ) ;
Va(n) = abs(Veq + j*Xeq*Ia(n)) ;
degrees(n) = 180*delta(n)/pi;
end
%Now plot the results
plot (degrees, Va)
xlabel('Power angle, delta [degrees]')
ylabel('Terminal voltage [per unit] ')
title( 'Terminal voltage vs. power angle for part (b)')
fprintf('\n\nHit any key to continue\n')
pause
% Solution for part (c)
%Set terminal voltage to unity
Vterm = 1.0;
for n = 1:101
P(n) = (n-1)/100;
deltat(n) = asin(P(n)*Xeq/(Vterm*Veq)) ;
Ia(n) = (Vterm *exp(j*deltat(n)) - Veq) / (j*Xeq) ;
Eaf(n) = abs(Vterm + j*(Xs+Xeq)*Ia(n) ) ;
end
%Now plot the results
plot (P, Eaf)
xlabel ( ' Power [per unit ] ' )
ylabel('Eaf [per unit] ')
title('Eaf vs. power for part (c) ') 