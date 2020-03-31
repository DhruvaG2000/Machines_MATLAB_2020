function zdot = pend(t,V);
    % Call syntax: zdot = pend(t,z);
    % Inputs are: t = time
    % z = [z(1); z(2)] = [theta; thetadot]
    % Output is : zdot = [z(2); -w^2 sin z(1)]
    z = V;
    w = 0.9; % specify a value of w^2
    zdot = [z(2); cos(z(1))];