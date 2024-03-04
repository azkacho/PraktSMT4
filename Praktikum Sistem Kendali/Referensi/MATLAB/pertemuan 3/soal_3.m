clc
clear

syms s
x = 1;
for w = 1:2:7
    syms s
    n1 = abs([w+j*2*w]);
    num1 = conv(n1, n1);
    d1 = [1 w+j*2*w];
    d2 = [1 w-j*2*w];
    dnum1 = conv(d1, d2);
    sys(x) =tf(num1, dnum1)
    x=x+x;
end

figure(5)
hold all
step(sys(1))
step(sys(2))
step(sys(4))
step(sys(8))
legend('H1','H3','H5','H7')

figure(6)
hold all
pzmap(sys(1))
pzmap(sys(2))
pzmap(sys(4))
pzmap(sys(8))
grid on
legend('H1','H3','H5','H7')