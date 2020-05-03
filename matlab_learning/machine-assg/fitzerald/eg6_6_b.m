clc
clear
%Here are the two sets of parameters
%Set 1 corresponds to the exact solution
%Set 2 corresponds to the approximate solution
R1(1) = 0.262;
R2(1) = 0.447;
X1(1) = 0.633;
X2(1) = 1.47;
Xm(1) = 21.2;

R1(2) = 0.262;
R2(2) = 0.444;
X1(2) = 0.603;
X2(2) = 1.41;
Xm(2) = 21.2;

nph = 3;
poles = 4;
Prot = 354;
%Here is the operating condition
V1 = 220/sqrt(3);
fe = 60;
rpm = 1746;
%Calculate the synchronous speed
ns = 120*fe/poles;
omegas = 4*pi*fe/poles;
slip = (ns-rpm)/ns;
omegam = omegas*(1-slip); 
%Calculate stator Thevenin equivalent
%Loop over the two motors
for m = 1:2
    Zgap = j*Xm(m)*(j*X2(m)+R2(m)/slip)/(R2(m)/slip+j*(Xm(m)+X2(m))); % dbug
    Zin = R1(m) + j*X1(m) + Zgap;
    I1 = V1/Zin;
    I2 = I1*(j*Xm(m))/(R2(m)/slip+j*(Xm(m)+X2(m)));
    Tmech = nph*abs(I2)^2*R2(m)/(slip*omegas); %Electromechanical torque
    Pmech = omegam*Tmech; %Electromechanical power
    Pshaft = Pmech - Prot;
    if (m == i)
    fprintf('\nExact solution:')
    else
    fprintf('\nApproximate solution:')
    end
    fprintf('\n Pmech= %.if [W], Pshaft = %.if [W]',Pmech, Pshaft)
    fprintf('\n I1 = %.if [i]\n',abs(I1));
end 