function [temperature] = my_temp_conv(Ti, Tf)
%Enter the lower and upper limit respectively
% and this function shall return a tabular conversion between those
%values in differences of 1
% 
% my_temp_conv (float, float)
%
celcius = Ti:1:Tf ;
farhenite = (9/5)*celcius + 32 ;

temperature = [celcius; farhenite]
    
