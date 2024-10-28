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
tff(left_0, axiom, ![I2$i: $int, J2$i: $int, J1$i: $int]: ($lesseq(2, I2$i) & $lesseq(I2$i, J1$i) & $lesseq(2, J2$i) & $lesseq(J2$i, J1$i) & $greater(J1$i, 2) & J1$i = $sum(J1$i, 0) => hcomposite(f__integer__($product(I2$i, J2$i))) & ($lesseq(2, I2$i) & $lesseq(I2$i, J1$i) & $lesseq(2, J2$i) & $lesseq(J2$i, J1$i) & $greater(J1$i, 2) & J1$i = $sum(J1$i, 0) => tcomposite(f__integer__($product(I2$i, J2$i)))))).
tff(left_1, axiom, ![I: general]: (?[I1$i: $int]: (I1$i = $sum(I1$i, 0) & f__integer__(I1$i) = I & ~tcomposite(I)) => hprime(I) & (?[I1$i: $int]: (I1$i = $sum(I1$i, 0) & f__integer__(I1$i) = I & ~tcomposite(I)) => tprime(I)))).
tff(right_1, conjecture, hcomposite(f__integer__(4)) => hcomposite(f__integer__(4)) & (tcomposite(f__integer__(4)) => tcomposite(f__integer__(4)))).