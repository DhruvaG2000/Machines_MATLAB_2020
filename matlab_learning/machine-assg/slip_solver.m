function output = slip_solver(s, ve, re, xe, r2, x2)
%
% description.
%
% @since 1.0.0
% @param {type} [name] description.
% @return {type} [name] description.
% @see dependencies
%
    syms pm;
    x = xe+x2;
    slip_eqn = (   (3*(ve^2)*r2) - (pm*(r2^2))/s - (2*pm*re*r2)  )/s == pm*(re^2) + (x^2)*pm + (3*(ve^2)*r2);
    load_frm_slip = solve(slip_eqn, pm);
    output = double(load_frm_slip);

end
