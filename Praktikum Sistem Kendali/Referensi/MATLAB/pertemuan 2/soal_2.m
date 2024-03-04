clc

A = [0 1;-1.5/1 -0.25/1]; 
B = [0;1/1];
C = [1 0];
D = [0];
sys_ss = ss(A,B,C,D)

[num,den] = ss2tf(A,B,C,D)
sys = tf(num,den)

[z,p,k] = ss2zp(A,B,C,D)

figure(5)
pzmap(z,p)
grid on

[c,p,k] = residue(num,den)
[num,den] = residue(c,p,k)

figure(6)
impulse(sys)
grid on

figure(7)
step(sys)
data = stepinfo('sys')
grid on
