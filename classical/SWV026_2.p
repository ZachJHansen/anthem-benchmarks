include('standard_preamble.ax').
tff(predicate_0, type, p: (general) > $o).
tff(predicate_1, type, q: (general) > $o).
tff(type_function_constant_0, type, n_i: $int).
tff(formula_0_unnamed_formula, axiom, $greatereq(n_i, 0)).
tff(formula_1_completed_definition_of_p_1, axiom, ![V1_g: general]: (p(V1_g) <=> ?[X_g: general]: (V1_g = X_g & (?[Z_g: general, Z1_g: general]: ((Z_g = X_g & ?[I_i: $int, J_i: $int, K_i: $int]: (((I_i = 0 & J_i = n_i) & Z1_g = f__integer__(K_i)) & $lesseq(I_i, K_i) & $lesseq(K_i, J_i))) & Z_g = Z1_g) & ?[Z_g: general, Z1_g: general]: ((?[I_i: $int, J_i: $int]: ((Z_g = f__integer__($product(I_i, J_i)) & f__integer__(I_i) = X_g) & f__integer__(J_i) = X_g) & Z1_g = f__integer__(n_i)) & p__less_equal__(Z_g, Z1_g)))))).
tff(formula_2_completed_definition_of_q_1, axiom, ![V1_g: general]: (q(V1_g) <=> ?[X_g: general]: (V1_g = X_g & (?[Z_g: general]: (Z_g = X_g & p(Z_g)) & ?[Z_g: general]: (?[I_i: $int, J_i: $int]: ((Z_g = f__integer__($sum(I_i, J_i)) & f__integer__(I_i) = X_g) & J_i = 1) & (~p(Z_g))))))).
tff(formula_3_unnamed_formula, conjecture, ?[N_i: $int]: (((![X_g: general]: (q(X_g) <=> X_g = f__integer__(N_i)) & $greatereq(N_i, 0)) & $lesseq($product(N_i, N_i), n_i)) & $greater($product($sum(N_i, 1), $sum(N_i, 1)), n_i))).
