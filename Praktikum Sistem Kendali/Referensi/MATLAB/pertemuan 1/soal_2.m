g_num = [2 5 3 6]
g_den = [1 6 11 6]
[c, p, k] = residue(g_num, g_den)
 
h_num = [1 2 3]
h_den = [1 3 3 1]
[c1, p1, k1] = residue(h_num, h_den)
 
[z, p, k] = tf2zpk(g_num, g_den)
g_zpk = zpk(z, p, k)
[z1, p1, k1] = tf2zpk(h_num, h_den)
h_zpk = zpk(z1, p1, k1)
 
s = tf('s')
g_tf = tf(g_num, g_den)
h_tf = tf(h_num, h_den)
 
s = zpk('s')
g_zpk = g_zpk
h_zpk = h_zpk