function y = myFun(x,n)
%SINE_SERIES: computes sin(x) from series expansion
%type sine_series(angle in radians, no. of terms for computation)
   
        for k = 1 : n 
                sine_ans(k) =   ( (-1)^(k-1) ) *   (x ^(2*k-1)  )  /  factorial(2*k-1) ;    
        end
        sum_sine = sum(sine_ans);


        disp('sin(x) = ')
        disp(sum_sine)

end 