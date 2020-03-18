%SINESERIES: computes sin(x) from series expansion
x = input('enter x: ')
k_terms = input('Enter how many terms to compute:')

for k = 1 : k_terms
    sine_ans(k) = (  ( (-1)^(k-1) ) * ( x^(2*k-1)  )  /  factorial(2*k-1) );    
end

sum_sine = sum(sine_ans);
disp('sin(x) = ')
disp(sum_sine)