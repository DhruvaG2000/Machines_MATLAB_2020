function er_norm = expsin(constants,t_data,x_data);
   
    t_data = [0 1.40 2.79 4.19 5.58 6.98 8.38 9.77 11.17 12.57];
    x_data = [0 1.49 0.399 -0.75 -0.42 0.32 0.32 -0.10 -0.21 0]; 

    % given lambda, compute norm of the error in the fitted curve
    t = t_data'; x = x_data' ; % make sure t & x are columns
   
    C= constants(1); l1 = constants(2); l2 = constants(3);
    xnew = C* exp(-l1 * t) .* sin(l2 *t); % evaluate your x
    er_norm = norm(xnew - x) % compare with data and compute error
