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
tff(predicate_0, type, hcomposite: (general) > $o).
tff(predicate_1, type, tcomposite: (general) > $o).
tff(predicate_2, type, hprime: (general) > $o).
tff(predicate_3, type, tprime: (general) > $o).
tff(transition_axiom_0, axiom, ![X1: general]: (hcomposite(X1) => tcomposite(X1))).
tff(transition_axiom_1, axiom, ![X1: general]: (hprime(X1) => tprime(X1))).
tff(left_0, axiom, ![I: general, J: general, N: general, V1: general]: (?[I1$i: $int, J1$i: $int]: (V1 = f__integer__($product(I1$i, J1$i)) & f__integer__(I1$i) = I & f__integer__(J1$i) = J) & (?[Z: general, Z1: general]: (Z = I & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 2 & f__integer__(J$i) = N & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general, Z1: general]: (Z = J & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 2 & f__integer__(J$i) = N & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general, Z1: general]: (Z = N & Z1 = f__integer__(2) & p__greater__(Z, Z1)) & ?[Z: general, Z1: general]: (?[I$i: $int, J$i: $int]: (Z = f__integer__($sum(I$i, J$i)) & f__integer__(I$i) = N & J$i = 0) & Z1 = N & Z = Z1)) => hcomposite(V1) & (?[I1$i: $int, J1$i: $int]: (V1 = f__integer__($product(I1$i, J1$i)) & f__integer__(I1$i) = I & f__integer__(J1$i) = J) & (?[Z: general, Z1: general]: (Z = I & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 2 & f__integer__(J$i) = N & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general, Z1: general]: (Z = J & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 2 & f__integer__(J$i) = N & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) & ?[Z: general, Z1: general]: (Z = N & Z1 = f__integer__(2) & p__greater__(Z, Z1)) & ?[Z: general, Z1: general]: (?[I$i: $int, J$i: $int]: (Z = f__integer__($sum(I$i, J$i)) & f__integer__(I$i) = N & J$i = 0) & Z1 = N & Z = Z1)) => tcomposite(V1)))).
tff(left_1, axiom, ![I: general, V1: general]: (V1 = I & (?[Z: general, Z1: general]: (?[I1$i: $int, J$i: $int]: (Z = f__integer__($sum(I1$i, J$i)) & f__integer__(I1$i) = I & J$i = 0) & Z1 = I & Z = Z1) & ?[Z: general]: (Z = I & ~tcomposite(Z))) => hprime(V1) & (V1 = I & (?[Z: general, Z1: general]: (?[I1$i: $int, J$i: $int]: (Z = f__integer__($sum(I1$i, J$i)) & f__integer__(I1$i) = I & J$i = 0) & Z1 = I & Z = Z1) & ?[Z: general]: (Z = I & ~tcomposite(Z))) => tprime(V1)))).
tff(right_1, conjecture, ![V1: general]: (V1 = f__integer__(4) & ?[Z: general]: (Z = f__integer__(4) & hcomposite(Z)) => hcomposite(V1) & (V1 = f__integer__(4) & ?[Z: general]: (Z = f__integer__(4) & tcomposite(Z)) => tcomposite(V1)))).
