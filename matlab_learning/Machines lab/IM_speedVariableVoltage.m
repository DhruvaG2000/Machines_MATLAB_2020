V1 = 220:-20:60;
V2 = [45 30];   
V = [V1 V2];
speed = [1470 1467 1464 1460 1454 1445 1425 1400 1340 1260 1160];

plot(V,speed)
title('Variable Voltage Speed Control of IM')
xlabel ('voltage across stator terminals (V) -->')
ylabel ('speed in rpm -->')