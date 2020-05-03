function  [IM_input_power DCG_output_power, DCG_ip, IM_efficiency, freq, slip, Nr, Wr, T]  = LoadTest(Vs, Is, Vg, Ig, t, pf)
%This function is only for 3 Phase Induction MOTOR NOT 
% 1 - phase!! 
% use as: [IM_input_power, DCG_output_power, DCG_ip, IM_efficiency, freq, slip, Nr, Wr, T] = 
% LoadTest(Vs, Is, Vg, Ig, t, powerfactor)
%
    IM_input_power   = (Is.*(Vs).*pf).*sqrt(3) ;
    DCG_output_power = Vg.*Ig;
    DCG_ip = DCG_output_power./0.8;     %assuming DC generator operates at 0.8 efficiency
    IM_output = DCG_ip;
    IM_efficiency = (IM_output./IM_input_power).*100 ;
    freq = 10./t;
    slip = freq./50;
    one_arr = [1 1 1 1 1 1 1 1 1 1 1 ];
    Nr = (one_arr-slip).*1000;
    Wr = Nr.*(2*pi/60);
    T = IM_output./Wr;  



end