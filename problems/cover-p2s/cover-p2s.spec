assumption: forall Y (exists X s(X, Y) -> exists I$ (Y = I$ and I$ >= 1 and I$ <= n$i)).
spec: forall Y (in_cover(Y) -> exists I$ (Y = I$ and I$ >= 1 and I$ <= n$i)).
spec: forall X (exists Y s(X, Y) -> exists Y (s(X, Y) and in_cover(Y))).
spec: forall Y Z (exists X (s(X, Y) and s(X, Z)) and in_cover(Y) and in_cover(Z) -> Y = Z).
