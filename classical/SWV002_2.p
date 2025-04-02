include('standard_preamble.ax').
tff(predicate_0, type, hq: (general) > $o).
tff(predicate_1, type, tq: (general) > $o).
tff(predicate_2, type, hp: (general) > $o).
tff(predicate_3, type, tp: (general) > $o).
tff(formula_0_transition_axiom_0, axiom, ![X1_g: general]: (hq(X1_g) => tq(X1_g))).
tff(formula_1_transition_axiom_1, axiom, ![X1_g: general]: (hp(X1_g) => tp(X1_g))).
tff(formula_2_left_0, axiom, ![V1_g: general, X_g: general]: ((((V1_g = X_g & ?[Z_g: general]: (Z_g = X_g & hp(Z_g))) & (~(~tq(V1_g)))) => hq(V1_g)) & (((V1_g = X_g & ?[Z_g: general]: (Z_g = X_g & tp(Z_g))) & (~(~tq(V1_g)))) => tq(V1_g)))).
tff(formula_3_right_0, conjecture, ![V1_g: general, X_g: general]: (((V1_g = X_g & (?[Z_g: general]: (Z_g = X_g & hp(Z_g)) & ?[Z_g: general]: (Z_g = X_g & (~(~tq(Z_g)))))) => hq(V1_g)) & ((V1_g = X_g & (?[Z_g: general]: (Z_g = X_g & tp(Z_g)) & ?[Z_g: general]: (Z_g = X_g & (~(~tq(Z_g)))))) => tq(V1_g)))).
