%theta = 0:0.05:pi/2;
syms theta; % be careful performance issue.

    x = (cos(theta)).^3;
    x_dash = diff(x) 
    y = (sin(theta) ).^3; 
    y_dash = diff(y) 

eqn = '( (3*(cos(theta).^2.*sin(theta).^4).^2 + (cos(theta).^4.*sin(theta).^2).^(1/2) ).^2     ).^(1/2)';
    a = input('Enter a')
    b = input('Enter b')

disp('now the given integral is: ')
    integral = quad(eqn, a, b) 