f = 60; %60 Hz system
omega = 2*pi*f;
s = 0.05; % slip
% Parameters
R1 = 0.534;
X1 = 2.45;
Xm = 70.1;
R2 = 0.956;
X2 = 2.96;
% Winding voltages
Valpha = 230;
Vbeta = 210 * exp(j*80*pi/180);
%(a) Calculate Vf and Vb from Equations and 9-21 and 9-22
Vf = 0.5*(Valpha - j*Vbeta) ;
Vb = 0.5*(Valpha + j*Vbeta) ;

magVf = abs(Vf) ;
angleVf = angle(Vf)*180/pi;
magVb = abs(Vb) ;
angleVb = angle(Vb)*180/pi;
fprintf('\n(a) ')
fprintf('\n Vf = %.if + j %.if = %.if at angle %.If degrees V', ...
real (Vf) , imag (Vf) , magVf, angleVf) ;
fprintf('\n Vb = %.if + j %.if = %.if at angle %.if degrees V\n', ...
real (Vb) , imag (Vb) , magVb, angleVb) ;
%(b) First calculate the forward-field input impedance of the motor from
% the equivalent circuit of Fig. 9-12(a).
Zforward = R1 + j*X1 + j*Xm*(R2/s+j*X2)/ (R2/s+j*(X2+Xm)) ;
%Now calculate the forward-field current.
If = Vf/Zforward;
magIf = abs(If) ;
angleIf = angle(If)*180/pi;
% Next calculate the backward-field input impedance of the motor from
% Fig. 9-12(b) .
Zback = R1 + j*X1 + j*Xm*(R2/(2-s)+j*X2)/(R2/(2-s)+j*(X2+Xm));
%Now calculate the backward-field current.
Ib = Vb/Zback;
magIb = abs(Ib) ;
angleIb = angle(Ib)*180/pi;
fprintf('\n(b) ')
fprintf('\n If = %.if + j %.if = %.if at angle %.if degrees A', ...
real (If) ,imag(If) ,magIf,angleIf) ;
fprintf('\n Ib = %.if + j %.if = %.if at angle %.if degrees A\n', ...
real (Ib) , imag (Ib) , magIb, angleIb) ;
%(c) Calculate the winding currents from Eqs. 9-19 and 9-20
Ialpha = If + Ib;
Ibeta = j*(If - Ib) ;
magIalpha = abs(Ialpha);
angleIalpha = angle(Ialpha)*180/pi;
magIbeta = abs(Ibeta) ;
angleIbeta = angle(Ibeta)*180/pi;
fprintf('\n(c) ')
fprintf('\n Ialpha = %.if + j %.if = %.if at angle %.if degrees A', ...
real (Ialpha) , imag (Ialpha) , magIalpha, angleIalpha) ;
fprintf('\n Ibeta= %.if + j %.if = %.if at angle %.if degrees A\n', ...
real (Ibeta) , imag (Ibeta) ,magIbeta, angleIbeta) ;

%(d) Power delivered to the forward field is equal to the
% forward-field input power less the stator-winding I^2R loss
Pgf = 2* (real(Vf*conj (If)) - R1*magIf^2) ;
% Power delivered to the backward field is equal to the
% backward-field input power less the stator-winding I^2R loss
Pgb = 2* (real(Vb*conj (Ib)) - R1*magIb^2) ;
% The electromagnetic power is equal to (l-s) times the
% net air-gap power
Pmech = (1-s)*(Pgf - Pgb) ;
disp('Answers: ')
fprintf('Power to forward field: (in W)')
disp(Pgf)
fprintf('\n Power to backward field in W: ')
disp(Pgb)
fprintf('\n Pmech in W= ')
disp(Pmech)
fprintf ( ' \n' )

