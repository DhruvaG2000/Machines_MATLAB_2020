clc
clear
%Here are the motor parameters
Vl = 230/sqrt(3) ;
nph = 3 ;
poles = 4 ;
fe = 60 ;
Rl = 0.095;
Xl = 0.680; XI = Xl;
X2 = 0.672;
Xm = 18.7;
%Calculate the synchronous speed
omegas = 4*pi*fe/poles;
ns = 120*fe/poles;
%Calculate stator Thevenin equivalent
Zleq = j*Xm*(Rl+j*Xl)/(Rl + j*(Xl+Xm)) ;
Rleq = real(Zleq) ;
Xleq = imag(Zleq) ;
Vleq = abs(Vl*j*Xm/(Rl + j*(XI+Xm))) ;
%Here is the loop over rotor resistance
for m = 1:5
if m == 1
R2 = 0.1;
elseif m==2
R2 = 0.2; 

elseif m==3
    R2 = 0.5;
    elseif m==4
    R2 = 1.0;
    else
    R2 = 1.5;
    end
    %Here is the loop over slip
    for n = 1:200
        s(n) = n/200; %slip
        rpm(n) = ns*(1-s(n)); %rpm
        I2 = abs(Vleq/(Zleq + j*X2 + R2/s(n))) ; %I2
        Tmech(n) = nph*I2^2*R2/(s(n)*omegas); %Electromechanical torque
    end %End of slip loop
    %Now plot
    plot (rpm, Tmech) 

    if m ==i
        hold
    end
end %End of resistance loop
hold
xlabel ( ' rpm' )
ylabel ('Tmech') 

