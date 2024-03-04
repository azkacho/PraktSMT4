clc
clear

g_num = [10]
g_den = [1 12 30 100]
[c,p,k] = residue(g_num,g_den)

[num,den] = residue(c,p,k)
[z,p,k] = tf2zp(g_num,g_den)

g_tf = tf(g_num,g_den)

g_zpk = zpk(z,p,k)

[z,p,k] = tf2zp(g_num,g_den)

figure(1)
pzmap(z,p)
grid on

[A,B,C,D] = tf2ss(g_num,g_den)

figure(2)
impulse(g_tf)
grid on

figure(3)
step(g_tf)
grid on