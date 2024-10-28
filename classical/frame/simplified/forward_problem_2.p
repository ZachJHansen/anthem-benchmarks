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
tff(predicate_0, type, in0: (general * general) > $o).
tff(predicate_1, type, person: (general) > $o).
tff(predicate_2, type, goto: (general * general * general) > $o).
tff(predicate_3, type, go: (general * general) > $o).
tff(predicate_4, type, in_building: (general * general) > $o).
tff(predicate_5, type, in: (general * general * general) > $o).
tff(predicate_6, type, in_building_p: (general * general) > $o).
tff(type_function_constant_0, type, h$i: $int).
tff(assumption, axiom, $greatereq(h$i, 0)).
tff(assumption, axiom, ![X: general, Y: general]: (in0(X, Y) => person(X))).
tff(assumption, axiom, ![X: general, Y: general, Z: general]: (goto(X, Y, Z) => person(X))).
tff(completed_definition_of_go_2, axiom, ![V1: general, V2: general]: (go(V1, V2) <=> ?[R: general]: (goto(V1, R, V2)))).
tff(completed_definition_of_in_building_2, axiom, ![V1: general, V2: general]: (in_building(V1, V2) <=> ?[R: general]: (in(V1, R, V2)))).
tff(completed_definition_of_in_building_2, axiom, ![V1: general, V2: general]: (in_building_p(V1, V2) <=> ?[R: general]: (in(V1, R, V2)))).
tff(constraint_0, axiom, ![P: general, R1: general, T: general, R2: general]: (in(P, R1, T) & in(P, R2, T) & R1 != R2 => $false)).
tff(constraint_1, axiom, ![P: general, K2$i: $int]: (~in_building(P, f__integer__(K2$i)) & person(P) & $lesseq(0, K2$i) & $lesseq(K2$i, h$i) => $false)).
tff(completed_definition_of_in_3, axiom, ![V1: general, V2: general, V3: general]: (in(V1, V2, V3) <=> ?[I$i: $int, K1$i: $int, R: general, T: general]: (V2 = R & V3 = f__integer__(0) & in0(V1, R) | (V3 = f__integer__($sum(I$i, 1)) & f__integer__(I$i) = T & goto(V1, V2, T)) | (V3 = f__integer__($sum(K1$i, 1)) & in(V1, V2, f__integer__(K1$i)) & ~go(V1, f__integer__(K1$i)) & $lesseq(0, K1$i) & $lesseq(K1$i, $difference(h$i, 1)))))).
tff(completed_definition_of_in_3, conjecture, ![V1: general, V2: general, V3: general]: (in(V1, V2, V3) <=> ?[I$i: $int, K1$i: $int, R: general, T: general]: (V2 = R & V3 = f__integer__(0) & in0(V1, R) | (V3 = f__integer__($sum(I$i, 1)) & f__integer__(I$i) = T & goto(V1, V2, T)) | (V3 = f__integer__($sum(K1$i, 1)) & in(V1, V2, f__integer__(K1$i)) & $lesseq(0, K1$i) & $lesseq(K1$i, $difference(h$i, 1)) & ~~in(V1, V2, V3))))).
