disp('Equation of a straight line:') 
    x = [0, 1.5, 3 ,4 ,5, 7, 9 , 10];
    m = 0.5;
    c = -2;
    y = m.*x + c 
    disp('Multiply, divide, and exponentiate vectors: ')
    t = 1:10; 
    x = t.*sin(t)
    y = (t-1) ./ (t+1)
    z = sin( t.^2  ) ./ t.^2 

disp('Points on a circle')  
    RADIUS = 2;
    theta = 0:(pi/4):(5*pi/4) ;
    x = cos(theta)*RADIUS 
    y = RADIUS*sin(theta)
    condition = sqrt(x.^2 + y.^2);
    if (condition == RADIUS)
         disp('Equation of circle is verified')
    end
    
disp('Geometric series')
    n = 0:1:10;
    r = 0.5;
    x = r.^n ;
    s = sum(x); 
    result_by_formula = 1 / (1-r);
    deviation_1 = s - result_by_formula

    n = 0:1:50;
    x = r.^n ;
    s = sum(x);
    deviation_2 = s - result_by_formula

    n = 0:1:100;
    x = r.^n ;
    s = sum(x);
    deviation_3 = s - result_by_formula
