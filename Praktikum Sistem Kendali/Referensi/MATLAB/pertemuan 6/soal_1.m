clc
clear

sys = tf([1 -6 8],[1 6 25])
figure(1)
rlocus(sys)

r = rlocus(sys,[1 3 5 7])

kpos=0.108
sys_clpos=feedback(sys,kpos)
figure(2)
step(sys_clpos)
kneg=0.108
sys_clneg=feedback(sys,kneg)
figure(3)
step(sys_clneg)

kfrek=inf
sys_clfrek=feedback(sys,kfrek)
figure(4)
step(sys_clfrek)