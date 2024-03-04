p_poly = [1 2 1]
q_poly = [1 1]
r_poly = conv(p_poly, q_poly)

syms t

p_sym = poly2sym(p_poly, t)
q_sym = poly2sym(q_poly, t)
r_sym = poly2sym(r_poly, t)

r_p = roots(p_poly)
r_q = roots(q_poly)
r_r = roots(r_poly)