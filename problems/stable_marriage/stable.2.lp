% guess matching
{ match(M,W) } :- manAssignsScore(M,X,Y), womanAssignsScore(W,Z,Z1).

% no polygamy
:- match(M1,W), match(M,W), M != M1.
:- match(M,W), match(M,W1), W != W1.

% no singles
jailed(M) :- match(M,X).
:- manAssignsScore(M,X,Y), not jailed(M).

% strong stability condition
:- match(M,W1), manAssignsScore(M,W,Smw), W1 != W, manAssignsScore(M,W1,Smw1),   Smw >  Smw1,
   match(M1,W), womanAssignsScore(W,M,Swm),        womanAssignsScore(W,M1,Swm1), Swm >= Swm1.
