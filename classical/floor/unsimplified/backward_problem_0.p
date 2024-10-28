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
tff(predicate_0, type, p: (general) > $o).
tff(predicate_1, type, q: (general) > $o).
tff(type_function_constant_0, type, n$i: $int).
tff(assumption, axiom, $greatereq(n$i, 0)).
tff(completed_definition_of_p_1, axiom, ![V1: general]: (p(V1) <=> ?[X: general]: (V1 = X & (?[Z: general, Z1: general]: (Z = X & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 0 & J$i = n$i & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general, Z1: general]: (?[I$i: $int, J$i: $int]: (Z = f__integer__($product(I$i, J$i)) & f__integer__(I$i) = X & f__integer__(J$i) = X) & Z1 = f__integer__(n$i) & p__less_equal__(Z, Z1)))))).
tff(completed_definition_of_q_1, axiom, ![V1: general]: (q(V1) <=> ?[X: general]: (V1 = X & (?[Z: general]: (Z = X & p(Z)) & ?[Z: general]: (?[I$i: $int, J$i: $int]: (Z = f__integer__($sum(I$i, J$i)) & f__integer__(I$i) = X & J$i = 1) & ~p(Z)))))).
tff(spec, conjecture, ?[N$i: $int]: (![X: general]: (q(X) <=> X = f__integer__(N$i)) & $greatereq(N$i, 0) & $lesseq($product(N$i, N$i), n$i) & $greater($product($sum(N$i, 1), $sum(N$i, 1)), n$i))).
