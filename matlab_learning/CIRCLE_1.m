disp('CIRCLE - A script file to draw a unit circle')

    r = input('Enter the radius of the circle: ')
    theta = linspace(0,2*pi,100); % create vector theta
    x = r*cos(theta); % generate x-coordinates
    y = r*sin(theta); % generate y-coordinates
    plot(x,y); % plot the circle
    axis('equal'); 
    title('Circle of given radius') 