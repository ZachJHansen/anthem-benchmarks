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
tff(predicate_0, type, s: (general * general) > $o).
tff(predicate_1, type, covered: (general) > $o).
tff(predicate_2, type, in_cover: (general) > $o).
tff(type_function_constant_0, type, n$i: $int).
tff(assumption, axiom, $greatereq(n$i, 0)).
tff(assumption, axiom, ![Y: general]: (?[X: general]: (s(X, Y)) => ?[I$i: $int]: (Y = f__integer__(I$i) & $greatereq(I$i, 1) & $lesseq(I$i, n$i)))).
tff(completed_definition_of_covered_1, axiom, ![V1: general]: (covered(V1) <=> ?[X: general, I: general]: (V1 = X & (?[Z: general]: (Z = I & in_cover(Z)) & ?[Z: general, Z1: general]: (Z = X & Z1 = I & s(Z, Z1)))))).
tff(spec, axiom, ![Y: general]: (in_cover(Y) => ?[I$i: $int]: (Y = f__integer__(I$i) & $greatereq(I$i, 1) & $lesseq(I$i, n$i)))).
tff(spec, axiom, ![X: general]: (?[Y: general]: (s(X, Y)) => ?[Y: general]: (s(X, Y) & in_cover(Y)))).
tff(spec, axiom, ![Y: general, Z: general]: (?[X: general]: (s(X, Y) & s(X, Z)) & in_cover(Y) & in_cover(Z) => Y = Z)).
tff(constraint_0, conjecture, ![I: general, J: general, X: general]: (?[Z: general, Z1: general]: (Z = I & Z1 = J & Z != Z1) & ?[Z: general]: (Z = I & in_cover(Z)) & ?[Z: general]: (Z = J & in_cover(Z)) & ?[Z: general, Z1: general]: (Z = X & Z1 = I & s(Z, Z1)) & ?[Z: general, Z1: general]: (Z = X & Z1 = J & s(Z, Z1)) => $false)).
