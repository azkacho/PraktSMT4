clc
clear

num1 = [1 2];
denum1 = [1 4 3];
G1 = tf(num1, denum1)

num2 = [1];
denum2 = [1 1];
G2 = tf(num2,denum2)
 
num3 = [1];
denum3 = [1 2];
G3 = tf(num3,denum3)

G4 = parallel(G1,G2)

seri = series(G1,G2);
G5 = feedback(seri,G3)

figure(1)
hold all
step(G1)
step(G2)
step(G3)
step(G4)
step(G5)
legend('G1','G2','G3','G4','G5')

figure(2)
hold all
impulse(G1)
impulse(G2)
impulse(G3)
impulse(G4)
impulse(G5)
legend('G1','G2','G3','G4','G5')
