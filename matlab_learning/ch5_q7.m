syms x(t)
eqn = diff(x,2) + x == cos(0.9*t);
V = odeToVectorField(eqn)

%part 1 complete
