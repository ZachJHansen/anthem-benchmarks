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
tff(predicate_0, type, hq: (general * general) > $o).
tff(predicate_1, type, tq: (general * general) > $o).
tff(predicate_2, type, hp: (general) > $o).
tff(predicate_3, type, tp: (general) > $o).
tff(transition_axiom_0, axiom, ![X1: general, X2: general]: (hq(X1, X2) => tq(X1, X2))).
tff(transition_axiom_1, axiom, ![X1: general]: (hp(X1) => tp(X1))).
tff(left_0, axiom, ![V1: general, V2: general, X: general, Y: general]: (V1 = X & V2 = Y & (?[Z: general]: (Z = X & hp(Z)) & ?[Z: general]: (Z = Y & hp(Z))) & ~~tq(V1, V2) => hq(V1, V2) & (V1 = X & V2 = Y & (?[Z: general]: (Z = X & tp(Z)) & ?[Z: general]: (Z = Y & tp(Z))) & ~~tq(V1, V2) => tq(V1, V2)))).
tff(left_1, axiom, ![V1: general, V2: general, X: general, Y: general, Z: general]: (V1 = X & V2 = Z & (?[Z: general, Z1: general]: (Z = X & Z1 = Y & hq(Z, Z1)) & ?[Z1: general, Z2: general]: (Z1 = Y & Z2 = Z & hq(Z1, Z2)) & ?[Z: general]: (Z = X & hp(Z)) & ?[Z: general]: (Z = Y & hp(Z)) & ?[Z1: general]: (Z1 = Z & hp(Z1))) => hq(V1, V2) & (V1 = X & V2 = Z & (?[Z: general, Z1: general]: (Z = X & Z1 = Y & tq(Z, Z1)) & ?[Z1: general, Z2: general]: (Z1 = Y & Z2 = Z & tq(Z1, Z2)) & ?[Z: general]: (Z = X & tp(Z)) & ?[Z: general]: (Z = Y & tp(Z)) & ?[Z1: general]: (Z1 = Z & tp(Z1))) => tq(V1, V2)))).
tff(right_1, conjecture, ![X: general, Y: general, Z: general]: (?[Z: general, Z1: general]: (Z = X & Z1 = Y & hq(Z, Z1)) & ?[Z1: general, Z2: general]: (Z1 = Y & Z2 = Z & hq(Z1, Z2)) & ?[Z1: general, Z2: general]: (Z1 = X & Z2 = Z & ~tq(Z1, Z2)) & ?[Z: general]: (Z = X & hp(Z)) & ?[Z: general]: (Z = Y & hp(Z)) & ?[Z1: general]: (Z1 = Z & hp(Z1)) => $false & (?[Z: general, Z1: general]: (Z = X & Z1 = Y & tq(Z, Z1)) & ?[Z1: general, Z2: general]: (Z1 = Y & Z2 = Z & tq(Z1, Z2)) & ?[Z1: general, Z2: general]: (Z1 = X & Z2 = Z & ~tq(Z1, Z2)) & ?[Z: general]: (Z = X & tp(Z)) & ?[Z: general]: (Z = Y & tp(Z)) & ?[Z1: general]: (Z1 = Z & tp(Z1)) => $false))).
