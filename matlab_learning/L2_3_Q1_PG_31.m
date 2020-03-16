disp('a simple sine plot')
    theta = linspace(0, 2*pi, 100);
    y = sin(theta);

    ylabel('Y')
    xlabel('theta')
    title('plot created by Dhruva')
    plot(theta, y, 'O')