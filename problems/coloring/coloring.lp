{color(X,Z)} :- vertex(X), color(Z).
:- color(X,Z1), color(X,Z2), Z1 != Z2.
aux(X) :- vertex(X), color(Z), color(X,Z).
:- vertex(X), not aux(X).
:- edge(X,Y), color(X,Z), color(Y,Z).
