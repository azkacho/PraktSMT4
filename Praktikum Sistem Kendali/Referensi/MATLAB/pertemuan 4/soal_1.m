clc
clear

num = [1]
den = [1 10]
G1 = tf(num,den)

num = [1]
den = [1 1]
G2 = tf(num,den)

num = [1 1]
den = [ 1 4 4]
G3 = tf(num,den)

num = [1 1]
den = [1 6]
G4 = tf(num,den)

num = [1 1]
den = [1 2]
H1 = tf(num,den)

num = [2 2]
den = [1 1]
H2 = tf(num,den)

num = [1 1]
den = [1 1]
H3 = tf(num,den)

a = H2/G4
b = series(G3,G4)
c = feedback(b,H1,1)
d = series(G2,c)
e = feedback(d,a)
f = series(G1,e)
g = feedback(f,H3)
figure(1)
step(g)