function [Z R X] = one_ph_NLBR(ch, V, I, W)
%
% This code is for the NL and BR test of IM
% output = one_ph_NLBR(case, Vm, Im, Wm)
% case 1: 3 phase delta connected Induction motor; 
% case 2: 1 phase IM
% return {array of 2 elements} [Z R X] R = resistance and X reactance.
%
    switch ch
        case 1
            disp('3 phase delta motor test')
            disp('We find the stator resistance and reactance from no load test')
            disp('We can find rotor resistance and reactance using blocked rotor test')
            I = I/sqrt(3);
            Z = V/I;
            R = W/(I*I*3);
            X = sqrt(  Z^2 - R^2  );

        case 2
            disp('one phase induction motor test')
            disp('We find the stator resistance and reactance from no load test')
            disp('We can find rotor resistance and reactance using blocked rotor test')
            Z = V./I;
            R = W./(I.^2);
            X = sqrt(  Z.^2 - R.^2  );     
        otherwise
            disp('There are only 2 options 1 and 2.. Try again!')
            Z=-1; R=-1; X=-1;
        end
    

end
