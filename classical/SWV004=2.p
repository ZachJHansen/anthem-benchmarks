include('standard_preamble.ax').
tff(predicate_0, type, edge: (general * general) > $o).
tff(predicate_1, type, vertex: (general) > $o).
tff(predicate_2, type, aux: (general) > $o).
tff(predicate_3, type, color: (general) > $o).
tff(predicate_4, type, color: (general * general) > $o).
tff(formula_0_unnamed_formula, axiom, ![X_g: general, Y_g: general]: (edge(X_g, Y_g) => (vertex(X_g) & vertex(Y_g)))).
tff(formula_1_completed_definition_of_aux_1, axiom, ![V1_g: general]: (aux(V1_g) <=> ?[X_g: general, Z_g: general]: (V1_g = X_g & ((?[Z_g: general]: (Z_g = X_g & vertex(Z_g)) & ?[Z1_g: general]: (Z1_g = Z_g & color(Z1_g))) & ?[Z1_g: general, Z2_g: general]: ((Z1_g = X_g & Z2_g = Z_g) & color(Z1_g, Z2_g)))))).
tff(formula_2_unnamed_formula, axiom, ![X_g: general, Z_g: general]: (color(X_g, Z_g) => (vertex(X_g) & color(Z_g)))).
tff(formula_3_unnamed_formula, axiom, ![X_g: general]: (vertex(X_g) => ?[Z_g: general]: (color(X_g, Z_g)))).
tff(formula_4_unnamed_formula, axiom, ![X_g: general, Z1_g: general, Z2_g: general]: ((color(X_g, Z1_g) & color(X_g, Z2_g)) => Z1_g = Z2_g)).
tff(formula_5_unnamed_formula, axiom, ~(?[X_g: general, Y_g: general, Z_g: general]: ((edge(X_g, Y_g) & color(X_g, Z_g)) & color(Y_g, Z_g)))).
tff(formula_6_constraint_0, conjecture, ![X_g: general, Z1_g: general, Z2_g: general]: (((?[Z_g: general, Z2_g: general]: ((Z_g = X_g & Z2_g = Z1_g) & color(Z_g, Z2_g)) & ?[Z_g: general, Z1_g: general]: ((Z_g = X_g & Z1_g = Z2_g) & color(Z_g, Z1_g))) & ?[Z_g: general, Z3_g: general]: ((Z_g = Z1_g & Z3_g = Z2_g) & Z_g != Z3_g)) => $false)).
