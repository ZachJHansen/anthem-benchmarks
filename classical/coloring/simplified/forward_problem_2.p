tff(type, type, general: $tType).
tff(type, type, symbol: $tType).
tff(type, type, f__integer__: ($int) > general).
tff(type, type, f__symbolic__: (symbol) > general).
tff(type, type, c__infimum__: general).
tff(type, type, c__supremum__: general).
tff(type, type, p__is_integer__: (general) > $o).
tff(type, type, p__is_symbolic__: (general) > $o).
tff(type, type, p__less_equal__: (general * general) > $o).
tff(type, type, p__less__: (general * general) > $o).
tff(type, type, p__greater_equal__: (general * general) > $o).
tff(type, type, p__greater__: (general * general) > $o).
tff(axiom, axiom, ![X: general]: (p__is_integer__(X) <=> (?[N: $int]: (X = f__integer__(N))))).
tff(axiom, axiom, ![X1: general]: (p__is_symbolic__(X1) <=> (?[X2: symbol]: (X1 = f__symbolic__(X2))))).
tff(axiom, axiom, ![X: general]: ((X = c__infimum__) | p__is_integer__(X) | p__is_symbolic__(X) | (X = c__supremum__))).
tff(axiom, axiom, ![N1: $int, N2: $int]: ((f__integer__(N1) = f__integer__(N2)) <=> (N1 = N2))).
tff(axiom, axiom, ![S1: symbol, S2: symbol]: ((f__symbolic__(S1) = f__symbolic__(S2)) <=> (S1 = S2))).
tff(axiom, axiom, ![N1: $int, N2: $int]: (p__less_equal__(f__integer__(N1), f__integer__(N2)) <=> $lesseq(N1, N2))).
tff(axiom, axiom, ![X1: general, X2: general]: ((p__less_equal__(X1, X2) & p__less_equal__(X2, X1)) => (X1 = X2))).
tff(axiom, axiom, ![X1: general, X2: general, X3: general]: ((p__less_equal__(X1, X2) & p__less_equal__(X2, X3)) => p__less_equal__(X1, X3))).
tff(axiom, axiom, ![X1: general, X2: general]: (p__less_equal__(X1, X2) | p__less_equal__(X2, X1))).
tff(axiom, axiom, ![X1: general, X2: general]: (p__less__(X1, X2) <=> (p__less_equal__(X1, X2) & (X1 != X2)))).
tff(axiom, axiom, ![X1: general, X2: general]: (p__greater_equal__(X1, X2) <=> p__less_equal__(X2, X1))).
tff(axiom, axiom, ![X1: general, X2: general]: (p__greater__(X1, X2) <=> (p__less_equal__(X2, X1) & (X1 != X2)))).
tff(axiom, axiom, ![N: $int]: p__less__(c__infimum__, f__integer__(N))).
tff(axiom, axiom, ![N: $int, S: symbol]: p__less__(f__integer__(N), f__symbolic__(S))).
tff(axiom, axiom, ![S: symbol]: p__less__(f__symbolic__(S), c__supremum__)).
tff(predicate_0, type, edge: (general * general) > $o).
tff(predicate_1, type, vertex: (general) > $o).
tff(predicate_2, type, aux: (general) > $o).
tff(predicate_3, type, color: (general) > $o).
tff(predicate_4, type, color: (general * general) > $o).
tff(assumption, axiom, ![X: general, Y: general]: (edge(X, Y) => (vertex(X) & vertex(Y)))).
tff(completed_definition_of_aux_1, axiom, ![V1: general]: (aux(V1) <=> ?[Z: general]: (vertex(V1) & color(Z) & color(V1, Z)))).
tff(spec, axiom, ![X: general, Z: general]: (color(X, Z) => (vertex(X) & color(Z)))).
tff(spec, axiom, ![X: general]: (vertex(X) => ?[Z: general]: (color(X, Z)))).
tff(spec, axiom, ![X: general, Z1: general, Z2: general]: (color(X, Z1) & color(X, Z2) => Z1 = Z2)).
tff(spec, axiom, ~(?[X: general, Y: general, Z: general]: (edge(X, Y) & color(X, Z) & color(Y, Z)))).
tff(constraint_2, conjecture, ![X: general, Y: general, Z: general]: (edge(X, Y) & color(X, Z) & color(Y, Z) => $false)).
