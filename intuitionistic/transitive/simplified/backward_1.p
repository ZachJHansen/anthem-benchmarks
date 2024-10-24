fof(right_0, axiom, ![X, Y]: (p(X) & p(Y) & ~~q(X, Y) => q(X, Y))).
fof(right_1, axiom, ![X, Y, Z]: (q(X, Y) & q(Y, Z) & ~q(X, Z) & p(X) & p(Y) & p(Z) => $false)).
fof(left_1, conjecture, ![X, Y, Z]: (q(X, Y) & q(Y, Z) & p(X) & p(Y) & p(Z) => q(X, Z))).
