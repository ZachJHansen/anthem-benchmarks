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
tff(completed_definition_of_go_2, axiom, ![V1: general, V2: general]: (go(V1, V2) <=> ?[P: general, T: general, R: general]: (V1 = P & V2 = T & ?[Z: general, Z1: general, Z2: general]: (Z = P & Z1 = R & Z2 = T & goto(Z, Z1, Z2))))).
tff(completed_definition_of_in_building_2, axiom, ![V1: general, V2: general]: (in_building(V1, V2) <=> ?[P: general, T: general, R: general]: (V1 = P & V2 = T & ?[Z: general, Z1: general, Z2: general]: (Z = P & Z1 = R & Z2 = T & in(Z, Z1, Z2))))).
tff(completed_definition_of_in_building_2, axiom, ![V1: general, V2: general]: (in_building_p(V1, V2) <=> ?[P: general, T: general, R: general]: (V1 = P & V2 = T & ?[Z: general, Z1: general, Z2: general]: (Z = P & Z1 = R & Z2 = T & in(Z, Z1, Z2))))).
tff(constraint_0, axiom, ![P: general, R1: general, T: general, R2: general]: (?[Z: general, Z1: general, Z2: general]: (Z = P & Z1 = R1 & Z2 = T & in(Z, Z1, Z2)) & ?[Z: general, Z1: general, Z2: general]: (Z = P & Z1 = R2 & Z2 = T & in(Z, Z1, Z2)) & ?[Z: general, Z1: general]: (Z = R1 & Z1 = R2 & Z != Z1) => $false)).
tff(constraint_1, axiom, ![P: general, T: general]: (?[Z: general, Z1: general]: (Z = P & Z1 = T & ~in_building(Z, Z1)) & ?[Z: general]: (Z = P & person(Z)) & ?[Z: general, Z1: general]: (Z = T & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 0 & J$i = h$i & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) => $false)).
tff(completed_definition_of_in_3, axiom, ![V1: general, V2: general, V3: general]: (in(V1, V2, V3) <=> (?[P: general, R: general]: (V1 = P & V2 = R & V3 = f__integer__(0) & ?[Z: general, Z1: general]: (Z = P & Z1 = R & in0(Z, Z1))) | ?[P: general, R: general, T: general]: (V1 = P & V2 = R & ?[I$i: $int, J$i: $int]: (V3 = f__integer__($sum(I$i, J$i)) & f__integer__(I$i) = T & J$i = 1) & ?[Z: general, Z1: general, Z2: general]: (Z = P & Z1 = R & Z2 = T & goto(Z, Z1, Z2))) | ?[P: general, R: general, T: general]: (V1 = P & V2 = R & ?[I$i: $int, J$i: $int]: (V3 = f__integer__($sum(I$i, J$i)) & f__integer__(I$i) = T & J$i = 1) & (?[Z: general, Z1: general, Z2: general]: (Z = P & Z1 = R & Z2 = T & in(Z, Z1, Z2)) & ?[Z: general, Z1: general]: (Z = P & Z1 = T & ~go(Z, Z1)) & ?[Z: general, Z1: general]: (Z = T & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 0 & ?[I$i: $int, J1$i: $int]: (J$i = $difference(I$i, J1$i) & I$i = h$i & J1$i = 1) & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1)))))).
tff(constraint_1, conjecture, ![P: general, T: general]: (?[Z: general, Z1: general]: (Z = P & Z1 = T & ~in_building_p(Z, Z1)) & ?[Z: general]: (Z = P & person(Z)) & ?[Z: general, Z1: general]: (Z = T & ?[I$i: $int, J$i: $int, K$i: $int]: (I$i = 0 & J$i = h$i & Z1 = f__integer__(K$i) & $lesseq(I$i, K$i) & $lesseq(K$i, J$i)) & Z = Z1) => $false)).
