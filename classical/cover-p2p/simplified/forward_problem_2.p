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
tff(predicate_0, type, covered: (general) > $o).
tff(predicate_1, type, in_cover: (general) > $o).
tff(predicate_2, type, s: (general * general) > $o).
tff(predicate_3, type, covered_p: (general) > $o).
tff(type_function_constant_0, type, n$i: $int).
tff(assumption, axiom, $greatereq(n$i, 0)).
tff(completed_definition_of_covered_1, axiom, ![V1: general]: (covered(V1) <=> ?[I: general]: (in_cover(I) & s(V1, I)))).
tff(completed_definition_of_covered_1, axiom, ![V1: general]: (covered_p(V1) <=> ?[I: general]: (in_cover(I) & s(V1, I)))).
tff(constraint_0, axiom, ![I: general, J: general, X: general]: (I != J & in_cover(I) & in_cover(J) & s(X, I) & s(X, J) => $false)).
tff(constraint_1, axiom, ![X: general, I: general]: (s(X, I) & ~covered(X) => $false)).
tff(completed_definition_of_in_cover_1, axiom, ![V1: general]: (in_cover(V1) <=> ?[K$i: $int]: (V1 = f__integer__(K$i) & $lesseq(1, K$i) & $lesseq(K$i, n$i) & ~~in_cover(V1)))).
tff(completed_definition_of_in_cover_1, conjecture, ![V1: general]: (in_cover(V1) <=> ?[K$i: $int]: (V1 = f__integer__(K$i) & $lesseq(1, K$i) & $lesseq(K$i, n$i) & ~~in_cover(V1)))).
