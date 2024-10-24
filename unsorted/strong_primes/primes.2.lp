composite(X) :- X = I*J, I > 2, J > 2, I+0 = I, J+0 = J.
prime(I) :- I+0 = I, not composite(I). % Prime holds for non-composite integers
