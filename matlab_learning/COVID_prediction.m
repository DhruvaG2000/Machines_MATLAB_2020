cases = [5 6 9 32 33 34 39 44 50 60 73 81 97 107 118 137 151 173 223 283 360 434 519 606 694 834] ;
%first entry: 2/3/2020
%last modified: 27/03/2020 day = 26
disp(length(cases))
days = 1:length(cases);
title('Plot of no. of cases vs The day since March 02 2020 upto 27/03')
plot(days, cases)