Name: Packing

Origin: 3rd ASP System Competion (2011);
https://www.mat.unical.it/aspcomp2011/OfficialProblemSuite

Command: This example program needs a specification it can be compared against!

Details: The program was made anthem-compliant by replacing disjunction with a choice rule.

The original encoding from the system competition is shown below:

int(X) :- area(X,Fv1).
int(X) :- area(Fv1,X).
int(X) :- int(Y), X=Y-1, X>=0.

pos(I,X,Y) | npos(I,X,Y) :- square(I,D), area(W,H), int(X), int(Y), X >= 0, Y >= 0, X1 = X + D, Y1 = Y + D, W >= X1, H >= Y1.

:- pos(I,X,Y), pos(I,X1,Y1), X1 != X.
:- pos(I,X,Y), pos(I,X1,Y1), Y1 != Y.

pos_square(I) :- pos(I,X,Y).
:- square(I,D), not pos_square(I).

%top left
overl(I1,I2) :- pos(I1,X1,Y1), square(I1,D1), pos(I2,X2,Y2), square(I2,D2), I1 != I2, W1 = X1+D1, H1 = Y1+D1, X2 >= X1, X2 < W1, Y2 >= Y1, Y2 < H1.
%top right
%overl(I1,I2) :- pos(I1,X1,Y1), square(I1,D1), pos(I2,X2,Y2), square(I2,D2), I1 != I2, W1 = X1+D1, H1 = Y1+D1, W2 = X2+D2, W2 > X1, W2 <= W1, Y2 >= Y1, Y2 < H1.
%bottom left
overl(I1,I2) :- pos(I1,X1,Y1), square(I1,D1), pos(I2,X2,Y2), square(I2,D2), I1 != I2, W1 = X1+D1, H1 = Y1+D1, H2 = Y2+D2, X2 >= X1, X2 < W1, H2 > Y1, H2 <= H1.
%bottom right
%overl(I1,I2) :- pos(I1,X1,Y1), square(I1,D1), pos(I2,X2,Y2), square(I2,D2), I1 != I2, W1 = X1+D1, H1 = Y1+D1, W2 = X2+D2, H2 = Y2+D2, W2 > X1, W2 <= W1, H2 > Y1, H2 <= H1.

:- overl(I1,I2).
