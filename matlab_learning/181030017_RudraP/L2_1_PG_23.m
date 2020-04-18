% 1. Arithmatic operators Area program
radius = pi^(1/3) - 1
AREA = pi * radius^2

% 2. Exp and log  (Solve 3^x = 17 for x and check the result)
x = log(17) / log(3)

% 3. Trigo  (y = cosh^2 x − sinh^2 x)
x = 32*pi; 
y = (cosh(x) )^2 - (sinh(x) )^2

% 4. Complex nos (Check the Euler’s Formula)
x = (pi/4)
res_1 = exp(j*x) 
res_2 = cos(x) + j*sin(x) 
if res_1 == res_2
    disp('verified euler formula')
end 



