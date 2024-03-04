clc
clear

A = [0 1 0;0 0 1;-160 -56 -14];
B = [0;1;-14];
C = [1 0 0];
D = 0;
sys = ss(A,B,C,D)
figure(1)
rlocus(sys)

r = rlocus(sys,[10 30 50 70])

pdamp = [-6.53+11.3i;-6.53-11.3i;0];
kdamp = place(A,B,pdamp)
sys_fbdamp = ss(A-B*kdamp,B,C-D*kdamp,D)
figure(2)
step(sys_fbdamp)

pfrek = [-6.21+7.9i;-6.21-7.9i;0];
kfrek = place(A,B,pfrek)
sys_fbfrek = ss(A-B*kfrek,B,C-D*kfrek,D)
figure(3)
step(sys_fbfrek)

pmin = [-4.65+3.52i;-4.65-3.52i;0];
kmin = place(A,B,pmin)
sys_fbfrek = ss(A-B*kmin,B,C-D*kmin,D)
figure(4)
step(sys_fbfrek)
