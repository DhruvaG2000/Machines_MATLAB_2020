plot (DCG_ip, IM_efficiency)
xlabel('Induction motor output in W -->');
ylabel('I.M. motor efficiency --> ');
title('3-ph IM Motor out power vs efficiency plot');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot (DCG_ip(2:end), pf(2:end))
xlabel('I.M. output power (W) -->');
ylabel('I.M. power factor -->');
title('3 PH I.M. o/p power vs power factor plot');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot (DCG_ip, T) 
xlabel('I.M. output power (W) -->');
ylabel('I.M. torque in Nm -->');
title('3 PH I.M. o/p power vs torque plot');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot (slip, T)
xlabel('I.M. slip -->');
ylabel('I.M. torque -->');
title('3 PH I.M. slip vs torque plot');