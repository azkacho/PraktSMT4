clc
clear

%a
A = [1 0 2; 2 3 0; 1 2 3]
B = [1 ; 0; 0]
C = [0 0 0;0 0 0;0 0 0]
D = [0]

sys = ss(A,B,C,D)
figure(1)
step(sys)
 
lamda = eig(A)
P = pole(sys)

%b
Q = ctrb(sys)

%c
isstable(sys) 

%d
P = [-0.5; -0.5; -0.5]
K = place(A,B,P)
 
sys_fb = ss(A-B*K,B,C-D*K,D)

%e
figure(2)
step(sys_fb)