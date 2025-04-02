include('standard_preamble.ax').
tff(predicate_0, type, hq: $o).
tff(predicate_1, type, tq: $o).
tff(predicate_2, type, hp: $o).
tff(predicate_3, type, tp: $o).
tff(formula_0_transition_axiom_0, axiom, hq => tq).
tff(formula_1_transition_axiom_1, axiom, hp => tp).
tff(formula_2_left_0, axiom, (hp => hq) & (tp => tq)).
tff(formula_3_left_1, axiom, ((hp & (~tq)) => $false) & ((tp & (~tq)) => $false)).
tff(formula_4_right_0, conjecture, (hp => hq) & (tp => tq)).
