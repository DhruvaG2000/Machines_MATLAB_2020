function [R X] = one_ph_NLBR(ch, V, I, W)
%
% This code is for the NL and BR test of 1 phase IM
% use ass:
% @since 1.0.0
% output = one_ph_NLBR(case, Vm, Im, Wm)
% @return {type} [name] description.
% @see dependencies
%
switch ch
case 1
    disp('no load test')
    %we find the stator resistance and reactance from no load test
    Z = V/I;
    R = W/(I*I);
    X = sqrt(  Z^2 - R^2  );

case 2
    disp('Blocked Rotor Test')
    %we can find rotor resistance and reactance using blocked rotor
    Z = V./I;
    R = W./(I.^2);
    X = sqrt(  Z.^2 - R.^2  );     
end
    

end
