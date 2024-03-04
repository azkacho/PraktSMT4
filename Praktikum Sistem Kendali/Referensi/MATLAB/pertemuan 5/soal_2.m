clc
clear

%a
A = [-5 0 0 0 0;
      0 0 1 0 0;
      -10.5229 -1066.67 -3.38028 23.5107 0;
      0 993.804 3.125 -23.5107 0;
      0 0 0 10 -10];
B = [5;0;0;0;0];
C = [0 0 0 -1.223*10^5 0];
D = [0];

sys = ss(A,B,C,D) 
lamda = eig(A)

%b
isstable(sys)

%c
Q = ctrb(sys)
rank(Q)
p = pole(sys)

%d
r = roots([1 4 11])
P = [r;10*r;10*real(r(1,1))]
K = place(A,B,P)

%e
sys_f = ss(A-B*K, B, C-D*K, D)

%f
figure(1)
step(sys)
title('Kalang Terbuka')
figure(2)
step(sys_f)
title('Kalang Tertutup')
