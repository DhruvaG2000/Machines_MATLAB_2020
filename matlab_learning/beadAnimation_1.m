% Script file for animating the circular motion of a bead
% -------------------------------------------
clf % clear any previous figure
theta=linspace(0,2*pi,100); % create a vector theta
x=cos(theta); % generate x and y-coordinates
y=sin(theta); %- of the bead along the path
hbead=line(x(1),y(1),'marker','o',...
'markersize',8,'erase','xor'); % draw the bead at the initial
%- position and assign a handle
axis([-1 1 -1 1 ]); axis('square');
for k=2:length(theta) % cycle through all positions
set(hbead,'xdata',x(k),'ydata',y(k));
% draw the bead at the new position
drawnow
end