% Knight Tour

% Input:
% - size(N), if the chessboard is NxN
% - forbidden(X,Y), if X,Y cannot be reached by the knight.

% Output:
% - move(X1,Y1,X2,Y2), if the knight moves from X1,Y1 to X2,Y2.


% Define the chessboard.
number(X) :- size(X).
number(X) :- number(Y), X=Y-1, X>0.
cell(X,Y) :- number(X), number(Y).

% Guess the moves.
{ move(X1,Y1,X2,Y2) } :- valid(X1,Y1,X2,Y2), not forbidden(X1,Y1), not forbidden(X2,Y2).

% Compute all valid moves from each cell.
valid(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), X1 = X2+2, Y1 = Y2+1.
valid(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), X1 = X2+2, Y2 = Y1+1.
valid(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), X2 = X1+2, Y1 = Y2+1.
valid(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), X2 = X1+2, Y2 = Y1+1.
valid(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), X1 = X2+1, Y1 = Y2+2.
valid(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), X1 = X2+1, Y2 = Y1+2.
valid(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), X2 = X1+1, Y1 = Y2+2.
valid(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), X2 = X1+1, Y2 = Y1+2.

% Exactly one move entering to each cell.
:- cell(X,Y), not forbidden(X,Y), not exactlyOneMoveEntering(X,Y).
exactlyOneMoveEntering(X,Y) :- move(X,Y,X1,Y1), not atLeastTwoMovesEntering(X,Y).
atLeastTwoMovesEntering(X,Y) :- move(X,Y,X1,Y1), move(X,Y,X2,Y2), X1 != X2.
atLeastTwoMovesEntering(X,Y) :- move(X,Y,X1,Y1), move(X,Y,X2,Y2), Y1 != Y2.

% Exactly one move leaving each cell.
:- cell(X,Y), not forbidden(X,Y), exactlyOneMoveLeaving(X,Y).
exactlyOneMoveLeaving(X,Y) :- move(X1,Y1,X,Y), not atLeastTwoMovesLeaving(X,Y).
atLeastTwoMovesLeaving(X,Y) :- move(X1,Y1,X,Y), move(X2,Y2,X,Y), X1 != X2.
atLeastTwoMovesLeaving(X,Y) :- move(X1,Y1,X,Y), move(X2,Y2,X,Y), Y1 != Y2.

% Each non-forbidden cell must be reached by the knight.
reached(X,Y) :- move(Z,Z1,X,Y).
reached(X,Y) :- move(X,Y,Z,Z1).
% reached(X2,Y2) :- reached(X1,Y1), move(X1,Y1,X2,Y2).
:- cell(X,Y), not forbidden(X,Y), not reached(X,Y).

% Each forbidden cell must remain unreached.
:- forbidden(X,Y), reached(X,Y).
