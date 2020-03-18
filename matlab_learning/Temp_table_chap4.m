% Temperature Table that is going to make a 
% table between farheneit and celcius
C = 0:5:100;
F = 9*C/5 + 32;
t = [C;F];
fid = fopen('Temperature.xlsx','w');
fprintf(fid, 'Temperature Table\n');
fprintf(fid, '~~~~~~~~~~~~~~~~~~\n');
fprintf(fid, 'Celsius   Farhenite \n');
fprintf(fid, '%4i   %8.2f\n', t);
fclose(fid);