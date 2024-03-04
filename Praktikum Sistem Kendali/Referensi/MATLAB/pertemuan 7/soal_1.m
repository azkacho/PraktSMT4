clear
clc

sys = tf([20],[1 5 6 0])
sys_fb = feedback(sys,1)

figure(1)
bode(sys_fb)

figure(2)
nyquist(sys_fb)

K_margin = db2mag(-6.01)
sys1_margin = sys_fb*0.3
sys2_margin = sys_fb*K_margin
sys3_margin = sys_fb*0.7
figure(3)
nyquist(sys1_margin)
title('Nyquist di bawah batas penguatan')
figure(4)
nyquist(sys2_margin)
title('Nyquist di batas penguatan')
figure(5)
nyquist(sys3_margin) 
title('Nyquist di atas batas penguatan')
sys1_fb = feedback(sys_fb,0.3) 
sys2_fb = feedback(sys_fb,K_margin) 
sys3_fb = feedback(sys_fb,0.7)

figure(6)
step(sys1_fb)
title('Sistem di bawah batas penguatan')
figure(7)
step(sys2_fb)
title('Sistem di batas penguatan')
figure(8)
step(sys3_fb)
title('Sistem di atas batas penguatan')