three(N) :- N = 1..n, I = 0..n, J = I..n, K = J..n, N = I*I+J*J+K*K.
more_than_three(N) :- N = 1..n, not three(N).
