include('standard_preamble.ax').
tff(predicate_0, type, hq: (general * general) > $o).
tff(predicate_1, type, tq: (general * general) > $o).
tff(predicate_2, type, hp: (general * general) > $o).
tff(predicate_3, type, tp: (general * general) > $o).
tff(formula_0_transition_axiom_0, axiom, ![X1_g: general, X2_g: general]: (hq(X1_g, X2_g) => tq(X1_g, X2_g))).
tff(formula_1_transition_axiom_1, axiom, ![X1_g: general, X2_g: general]: (hp(X1_g, X2_g) => tp(X1_g, X2_g))).
tff(formula_2_right_0, axiom, ![V1_g: general, V2_g: general, X_g: general, Y_g: general]: ((((V1_g = X_g & V2_g = Y_g) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & ?[I_i: $int, J_i: $int]: ((Z1_g = f__integer__($difference(I_i, J_i)) & f__integer__(I_i) = Y_g) & J_i = 1)) & hp(Z_g, Z1_g))) => hq(V1_g, V2_g)) & (((V1_g = X_g & V2_g = Y_g) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & ?[I_i: $int, J_i: $int]: ((Z1_g = f__integer__($difference(I_i, J_i)) & f__integer__(I_i) = Y_g) & J_i = 1)) & tp(Z_g, Z1_g))) => tq(V1_g, V2_g)))).
tff(formula_3_left_0, conjecture, ![V1_g: general, V2_g: general, X_g: general, Y_g: general]: ((((V1_g = X_g & ?[I_i: $int, J_i: $int]: ((V2_g = f__integer__($sum(I_i, J_i)) & f__integer__(I_i) = Y_g) & J_i = 1)) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = Y_g) & hp(Z_g, Z1_g))) => hq(V1_g, V2_g)) & (((V1_g = X_g & ?[I_i: $int, J_i: $int]: ((V2_g = f__integer__($sum(I_i, J_i)) & f__integer__(I_i) = Y_g) & J_i = 1)) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = Y_g) & tp(Z_g, Z1_g))) => tq(V1_g, V2_g)))).
