clc
clear

G = tf([18 360],[1 3 -18])
figure(1)
nyquist(G)

Kcr = db2mag(-26)
Pcr = 2*pi/22.9

s = tf('s');
Kp_pd = 0.6*Kcr
Td_pd = 0.125*Pcr
Gc_pd = Kp_pd*(1+Td_pd*s)
Gcl_pd = feedback(Gc_pd*G,1)
figure(2)
step(Gcl_pd)
title('Sistem Kendali PD')

Kp_pi = 0.45*Kcr
Ti_pi = (1/1.2)*Pcr
Gc_pi = Kp_pi*(1+(1/Ti_pi*s))
Gcl_pi = feedback(Gc_pi*G,1)
figure(3)
step(Gcl_pi)
title('Sistem Kendali PI')

Kp_pid = 0.6*Kcr 
Ti_pid = 0.5*Pcr
Td_pid = 0.125*Pcr
Gc_pid = Kp_pid*(1+(1/(Ti_pid*s)+Td_pid*s)) 
Gcl_pid = feedback(Gc_pid*G,1)
figure(4)
step(Gcl_pid)
title('Sistem Kendali PID')