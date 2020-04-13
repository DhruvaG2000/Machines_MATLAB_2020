s = 2:-0.01:-1;
K = 3*(600)^2 /2*pi*1800;
term1 = 1./(      (0.1035*10^(-3) + 0.01./s).^2 + (0.114 + 0.003247)^2);
term2 = 0.01./s;
torque = K.*term1.*term2;
plot(s, torque)
xlabel('slip -->')
ylabel('torque N-m -->')
title('Torque slip char at rated voltage and frequency')