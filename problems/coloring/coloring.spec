assumption: forall X Y (edge(X,Y) -> vertex(X) and vertex(Y)).
spec: forall X Z (color(X,Z) -> vertex(X) and color(Z)).
spec: forall X (vertex(X) -> exists Z color(X,Z)).
spec: forall X Z1 Z2 (color(X,Z1) and color(X,Z2) -> Z1 = Z2).
spec: not exists X Y Z (edge(X,Y) and color(X,Z) and color(Y,Z)).
