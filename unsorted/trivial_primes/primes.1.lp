composite(I*J) :- I = 2..N, J = 2..N, N > 2, N+0 = N.
% Trivial rule absent
prime(I) :- I+0 = I, not composite(I). % Prime holds for non-composite integers
