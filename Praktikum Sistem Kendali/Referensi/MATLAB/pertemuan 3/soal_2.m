clc
clear

num1   = [1];
denum1 = [1 1];
H1 = tf(num1,denum1)
 
num2   = [1];
denum2 = [3 1];
H2 = tf(num2,denum2)
 
num3   = [1];
denum3 = [5 1];
H3 = tf(num3,denum3)
 
num4   = [1];
denum4 = [7 1];
H4 = tf(num4,denum4)

figure(3)
hold all
step(H1)
step(H2)
step(H3)
step(H4)
legend('H1','H2','H3','H4')

figure(4)
hold all
pzmap(H1)
pzmap(H2)
pzmap(H3)
pzmap(H4)
grid on
legend('H1','H2','H3','H4')
