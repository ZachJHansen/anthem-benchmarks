include('standard_preamble.ax').
tff(predicate_0, type, q: (general) > $o).
tff(predicate_1, type, p: (general) > $o).
tff(formula_0_completed_definition_of_q_1, axiom, ![V1_g: general]: (q(V1_g) <=> ?[X_g: general, Y_g: general]: (?[I_i: $int, J_i: $int]: ((V1_g = f__integer__($sum(I_i, J_i)) & f__integer__(I_i) = X_g) & f__integer__(J_i) = Y_g) & (?[Z_g: general]: (Z_g = X_g & p(Z_g)) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = Y_g) & Z_g = Z1_g))))).
tff(formula_1_completed_definition_of_q_1, conjecture, ![V1_g: general]: (q(V1_g) <=> ?[X_g: general]: (?[I_i: $int, J_i: $int]: ((V1_g = f__integer__($product(I_i, J_i)) & I_i = 2) & f__integer__(J_i) = X_g) & ?[Z_g: general]: (Z_g = X_g & p(Z_g))))).
