%First we will calculate slip
syms s;

%value assigning box:
%ve = 600/sqrt(3); re = 0.1035; xe=3.247; r2 = 0.01; x2=0.114; x = xe+x2;
ve = 227.4; re = (0.1476); xe=0.443; r2 = 0.12; x2=0.45; x = xe+x2; 
p_load = 1000:100:41000; p_wind_loss = (8000*(1-s)^3);
%pm = p_load ;%+ p_wind_loss; 
s_arr = 0.298:0.005:0.66 ;
s = s_arr;
pm_to_plot = zeros(1,length(s_arr));
%
ii = 1;
for ii = 1 : length(s_arr)

    %if pm > 3500
     %   break
    %end
    pm_to_plot(ii) = slip_solver(s_arr(ii), ve , re, xe, r2, x2);
   

end
pm_to_plot;
%Zab = (17+38j) + ( ((10./s) +114j).*(3.5j)./((10./s) + 117.5j) ) ;
%Zab = (re + r2./s)+ (x2 + xe)*j;
Zab = (17 + 38*j) + ( ( (10./s + 114j).*(3.5*j)  )./ (10./s + (114+3.5)*j ) );
I_tot = 1000*ve./(Zab);
Input_VA = ve.*real(I_tot);
pf_input = Pin./(Input_VA)