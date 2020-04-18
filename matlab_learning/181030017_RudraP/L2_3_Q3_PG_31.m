disp('An exponentially decaying sine curve')

n = input('10, 50 or 100 points? ');
switch n
case 10
    disp('using 10 points')
        theta = linspace(0, 4*pi, 10);
        y_sin = sin(theta);
        expo = exp( theta.*(-0.4) ) ;
        y = expo.*y_sin;
        plot(theta, y)
        title('using 10 points ')
        ylabel('Y')
        xlabel('theta')
case 50
    disp('using 50 points')
        theta = linspace(0, 4*pi, 50);
        y_sin = sin(theta);
        expo = exp( theta.*(-0.4) ) ;
        y = expo.*y_sin;
        plot(theta, y)
        title('using 50 points ')
        ylabel('Y')
        xlabel('theta')

case 100  
    disp('using 100 points')
        theta = linspace(0, 4*pi, 100);
        y_sin = sin(theta);
        expo = exp( theta.*(-0.4) ) ;
        y = expo.*y_sin;
        plot(theta, y)
        title('using 100 points ')
        ylabel('Y')
        xlabel('theta')

end 
