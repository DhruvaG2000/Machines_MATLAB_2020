s = 0.298:0.005:0.66 %0.04
%Pout = 100000:10000:400000;
Pc = 10000; Pm = 8000.*((1.-s).^3); Pstray = 0.025.*Pout;   

Pin = pm_to_plot + Pc + Pm + Pstray;

efficiency_tot = Pout./Pin;
percentage_of_rated_load = (Pout/350000)*100;
plot(percentage_of_rated_load, efficiency_tot)
xlabel('Load-->')
ylabel('effi -->')
title('Efficiency vs %ge of rated load graph')