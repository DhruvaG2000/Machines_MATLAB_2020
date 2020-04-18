function y = myFun(x,n)
    %SINE_SERIES: computes sin(x) from series expansion
    %type sine_series(angle in radians, no. of terms for computation)

    if nargin<2
        n = 10;
    end

        if floor(n)==n && n>0
            for index = 1 : length(x)
                
                for k = 1 : floor(n) 
                    sine_ans(k) = (  ( (-1)^(k-1) ) * (  (x(index)) ^(2*k-1)  )  /  factorial(2*k-1) );    
                end
            sum_sine(index) = sum(sine_ans);
            end

            disp('sin(x) = ')
            disp(sum_sine)

        

        else
            disp('n must be greater than 0 and must be an integer only')
        end 
        
    y_2 = sin(x);
    err = y_2 - sum_sine;
    disp('error percent is:')
    100*err

end