function [x,y] = circlefn(r);
    % CIRCLEFN - Function to draw a circle of radius r.
    % File written by Rudra Pratap on 9/17/94. Last modified 7/1/98
    % Call syntax: [x,y] = circlefn(r); or just: circlefn(r);
    % Input: r = specified radius
    % Output: [x,y] = the x- and y-coordinates of data points
    theta = linspace(0,2*pi,100); % create vector theta
    x = r*cos(theta); % generate x-coordinates
    y = r*sin(theta); % generate y-coordinates
    plot(x,y); % plot the circle
    axis('equal'); % set equal scale on axes
    title(['Circle of radius r =',num2str(r)])
    % put a title with the value of r.