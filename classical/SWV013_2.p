include('standard_preamble.ax').
tff(predicate_0, type, s: (general * general) > $o).
tff(predicate_1, type, covered: (general) > $o).
tff(predicate_2, type, in_cover: (general) > $o).
tff(type_function_constant_0, type, n_i: $int).
tff(formula_0_unnamed_formula, axiom, $greatereq(n_i, 0)).
tff(formula_1_unnamed_formula, axiom, ![Y_g: general]: (?[X_g: general]: (s(X_g, Y_g)) => ?[I_i: $int]: ((Y_g = f__integer__(I_i) & $greatereq(I_i, 1)) & $lesseq(I_i, n_i)))).
tff(formula_2_completed_definition_of_covered_1, axiom, ![V1_g: general]: (covered(V1_g) <=> ?[X_g: general, I_g: general]: (V1_g = X_g & (?[Z_g: general]: (Z_g = I_g & in_cover(Z_g)) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = I_g) & s(Z_g, Z1_g)))))).
tff(formula_3_unnamed_formula, axiom, ![Y_g: general]: (in_cover(Y_g) => ?[I_i: $int]: ((Y_g = f__integer__(I_i) & $greatereq(I_i, 1)) & $lesseq(I_i, n_i)))).
tff(formula_4_unnamed_formula, axiom, ![X_g: general]: (?[Y_g: general]: (s(X_g, Y_g)) => ?[Y_g: general]: (s(X_g, Y_g) & in_cover(Y_g)))).
tff(formula_5_unnamed_formula, axiom, ![Y_g: general, Z_g: general]: (((?[X_g: general]: (s(X_g, Y_g) & s(X_g, Z_g)) & in_cover(Y_g)) & in_cover(Z_g)) => Y_g = Z_g)).
tff(formula_6_constraint_0, conjecture, ![I_g: general, J_g: general, X_g: general]: (((((?[Z_g: general, Z1_g: general]: ((Z_g = I_g & Z1_g = J_g) & Z_g != Z1_g) & ?[Z_g: general]: (Z_g = I_g & in_cover(Z_g))) & ?[Z_g: general]: (Z_g = J_g & in_cover(Z_g))) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = I_g) & s(Z_g, Z1_g))) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = J_g) & s(Z_g, Z1_g))) => $false)).
