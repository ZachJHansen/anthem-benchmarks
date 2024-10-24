sqrt(S) :- S = 1..n, S*S <= n, (S+1)*(S+1) > n.
three(N) :- sqrt(S), N = 1..n, I = 0..S, J = I..S, K = J..S, N = I*I+J*J+K*K.
more_than_three(N) :- N = 1..n, not three(N).
