clc

num = [0 0 0 100]
den = [1 14 50 100]
sys = tf(num,den)
[z,p,k] = tf2zp(num,den)

figure(1)
pzmap(z,p)
grid on

[c,p,k] = residue(num,den)
[num,den] = residue(c,p,k)

[A,B,C,D] = tf2ss(num,den)

figure(2)
impulse(sys)
grid on

figure(3)
step(sys)
data = stepinfo('sys')
grid on

figure(4)
t = 0:0.1:5;
u = 1.5*cos((pi*t)+(pi/4))
lsim(sys,u,t)
grid on