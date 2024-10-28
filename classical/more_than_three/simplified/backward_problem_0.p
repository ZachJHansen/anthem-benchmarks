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
tff(predicate_0, type, three: (general) > $o).
tff(predicate_1, type, sqrt: (general) > $o).
tff(predicate_2, type, three_p: (general) > $o).
tff(predicate_3, type, more_than_three: (general) > $o).
tff(type_function_constant_0, type, n$i: $int).
tff(assumption, axiom, $greatereq(n$i, 1)).
tff(completed_definition_of_three_1, axiom, ![V1: general]: (three(V1) <=> ?[I$i: $int, I3$i: $int, K$i: $int, K1$i: $int]: ($lesseq(1, K$i) & $lesseq(K$i, n$i) & V1 = f__integer__(K$i) & $lesseq(0, I3$i) & $lesseq(I3$i, n$i) & $lesseq(I3$i, K1$i) & $lesseq(K1$i, n$i) & $lesseq(K1$i, I$i) & $lesseq(I$i, n$i) & V1 = f__integer__($sum($sum($product(I3$i, I3$i), $product(K1$i, K1$i)), $product(I$i, I$i)))))).
tff(completed_definition_of_sqrt_1, axiom, ![V1: general]: (sqrt(V1) <=> ?[K$i: $int]: ($lesseq(1, K$i) & $lesseq(K$i, n$i) & V1 = f__integer__(K$i) & $lesseq($product(K$i, K$i), n$i) & $greater($product($sum(K$i, 1), $sum(K$i, 1)), n$i)))).
tff(completed_definition_of_three_1, axiom, ![V1: general]: (three_p(V1) <=> ?[I$i: $int, J2$i: $int, K$i: $int, K1$i: $int, K2$i: $int]: (sqrt(f__integer__(J2$i)) & $lesseq(1, K$i) & $lesseq(K$i, n$i) & V1 = f__integer__(K$i) & $lesseq(0, K1$i) & $lesseq(K1$i, J2$i) & $lesseq(K1$i, K2$i) & $lesseq(K2$i, J2$i) & $lesseq(K2$i, I$i) & $lesseq(I$i, J2$i) & V1 = f__integer__($sum($sum($product(K1$i, K1$i), $product(K2$i, K2$i)), $product(I$i, I$i)))))).
tff(completed_definition_of_more_than_three_1, axiom, ![V1: general]: (more_than_three(V1) <=> ?[K$i: $int]: ($lesseq(1, K$i) & $lesseq(K$i, n$i) & V1 = f__integer__(K$i) & ~three_p(V1)))).
tff(completed_definition_of_more_than_three_1, conjecture, ![V1: general]: (more_than_three(V1) <=> ?[K$i: $int]: ($lesseq(1, K$i) & $lesseq(K$i, n$i) & V1 = f__integer__(K$i) & ~three(V1)))).
