clc
clear

%a
A = [1 3; 3 1];
B = [1 ; 0];
C = [1 0; 0 1];
D = [0];
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
P1 = [-1+2i, -1-2i]
P2 = [3i, -3i]
P3 = [2+4i, 2-4i]
 
K1 = place(A,B,P1)
K2 = place(A,B,P2)
K3 = place(A,B,P3)
 
sys_f1 = ss(A-B*K1, B, C-D*K1,D)
sys_f2 = ss(A-B*K2, B, C-D*K2,D)
sys_f3 = ss(A-B*K3, B, C-D*K3,D)

%e
figure(2)
step(sys_f1)
title('Kutub: -1 ± 2i')
figure(3)
step(sys_f2)
title('Kutub: ±3i')
figure(4)
step(sys_f3)
title('Kutub: 2 ± 4i')
