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
tff(predicate_0, type, composite: (general) > $o).
tff(predicate_1, type, sqrtb: (general) > $o).
tff(predicate_2, type, composite_p: (general) > $o).
tff(predicate_3, type, prime: (general) > $o).
tff(type_function_constant_0, type, a$i: $int).
tff(type_function_constant_1, type, b$i: $int).
tff(assumption, axiom, $greater(a$i, 1)).
tff(completed_definition_of_composite_1, axiom, ![V1: general]: (composite(V1) <=> ?[I: general, J: general]: (?[I1$i: $int, J1$i: $int]: (V1 = f__integer__($product(I1$i, J1$i)) & f__integer__(I1$i) = I & f__integer__(J1$i) = J) & (?[Z: general, Z1: general]: (Z = I & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 2 & J$i = b$i & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general, Z1: general]: (Z = J & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 2 & J$i = b$i & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1))))).
tff(completed_definition_of_sqrtb_1, axiom, ![V1: general]: (sqrtb(V1) <=> ?[M: general]: (V1 = M & (?[Z: general, Z1: general]: (Z = M & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 1 & J$i = b$i & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general, Z1: general]: (?[I$i: $int, J$i: $int]: (Z = f__integer__($product(I$i, J$i)) & f__integer__(I$i) = M & f__integer__(J$i) = M) & Z1 = f__integer__(b$i) & p__less_equal__(Z, Z1)) & ?[Z: general, Z1: general]: (?[I$i: $int, J$i: $int]: (Z = f__integer__($product(I$i, J$i)) & ?[I1$i: $int, J$i: $int]: (I$i = $sum(I1$i, J$i) & f__integer__(I1$i) = M & J$i = 1) & ?[I$i: $int, J1$i: $int]: (J$i = $sum(I$i, J1$i) & f__integer__(I$i) = M & J1$i = 1)) & Z1 = f__integer__(b$i) & p__greater__(Z, Z1)))))).
tff(completed_definition_of_composite_1, axiom, ![V1: general]: (composite_p(V1) <=> ?[I: general, J: general, M: general]: (?[I1$i: $int, J1$i: $int]: (V1 = f__integer__($product(I1$i, J1$i)) & f__integer__(I1$i) = I & f__integer__(J1$i) = J) & (?[Z: general]: (Z = M & sqrtb(Z)) & ?[Z: general, Z1: general]: (Z = I & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 2 & f__integer__(J$i) = M & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general, Z1: general]: (Z = J & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 2 & J$i = b$i & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1))))).
tff(completed_definition_of_prime_1, axiom, ![V1: general]: (prime(V1) <=> ?[I: general]: (V1 = I & (?[Z: general, Z1: general]: (Z = I & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = a$i & J$i = b$i & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general]: (Z = I & ~composite(Z)))))).
tff(completed_definition_of_prime_1, conjecture, ![V1: general]: (prime(V1) <=> ?[I: general]: (V1 = I & (?[Z: general, Z1: general]: (Z = I & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = a$i & J$i = b$i & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general]: (Z = I & ~composite_p(Z)))))).
