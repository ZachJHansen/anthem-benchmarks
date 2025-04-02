include('standard_preamble.ax').
tff(predicate_0, type, p: (general) > $o).
tff(type_function_constant_0, type, n_i: $int).
tff(formula_0_completed_definition_of_p_1, axiom, ![V1_g: general]: (p(V1_g) <=> ?[X_g: general]: (?[I_i: $int, J_i: $int]: ((V1_g = f__integer__($product(I_i, J_i)) & f__integer__(I_i) = X_g) & f__integer__(J_i) = X_g) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & ?[I_i: $int, J_i: $int, K_i: $int]: (((?[I1_i: $int, J_i: $int]: ((I_i = $difference(I1_i, J_i) & I1_i = 0) & J_i = n_i) & J_i = n_i) & Z1_g = f__integer__(K_i)) & $lesseq(I_i, K_i) & $lesseq(K_i, J_i))) & Z_g = Z1_g)))).
tff(formula_1_unnamed_formula, conjecture, ![N_i: $int]: ($product(N_i, N_i) = $product($uminus(N_i), $uminus(N_i)))).
