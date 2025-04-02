include('standard_preamble.ax').
tff(predicate_0, type, hp: (general) > $o).
tff(predicate_1, type, tp: (general) > $o).
tff(formula_0_transition_axiom_0, axiom, ![X1_g: general]: (hp(X1_g) => tp(X1_g))).
tff(formula_1_left_0, axiom, ![V1_g: general, X_g: general]: (((V1_g = X_g & (?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = f__integer__(3)) & p__greater__(Z_g, Z1_g)) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = f__integer__(5)) & p__less__(Z_g, Z1_g)))) => hp(V1_g)) & ((V1_g = X_g & (?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = f__integer__(3)) & p__greater__(Z_g, Z1_g)) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = f__integer__(5)) & p__less__(Z_g, Z1_g)))) => tp(V1_g)))).
tff(formula_2_right_0, conjecture, ![V1_g: general]: (((V1_g = f__integer__(4) & $true) => hp(V1_g)) & ((V1_g = f__integer__(4) & $true) => tp(V1_g)))).
