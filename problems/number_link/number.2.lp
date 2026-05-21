% Numberlink Puzzles

% Input:
% - node(v), v node of the graph
% - edge(e,u,v), {u,v} edge in the graph and e is the name of the edge
% - connection(i,u,v), i is an index number and u and v are node names (u != v).

% Output:
% - link(e), e is an edge name given in the input

% Author: Annamaria Bria


% normalize graph
uedge(Z1,X1,Y1) :- edge(Z1,Y1,X1).
uedge(Z1,X1,Y1) :- edge(Z1,X1,Y1).

% GUESS
% guesses all possible linked adges for a connection N
linked(Z,N) :- connection(N,S,A), uedge(Z,X1,X2), not noLinked(Z,N).
noLinked(Z,N) :- connection(N,S,A), uedge(Z,X1,X2), not linked(Z,N).

% Builds the path of the linked edges
path(N,X1,Y1) :- connection(N,X1,Fv1), uedge(Z1,X1,Y1), linked(Z1,N).
path(N,X1,Y2) :- path(N,X1,Y1), uedge(Z1, Y1, Y2), Y1 != Y2, linked(Z1,N), X1 != Y2.

% CHECK
% For each connection must exists a path
:- connection(N,X1,X2), not path(N,X1,X2).

% Each uedge can linked for exactly one connection
:- linked(Z,N), linked(Z,M), N != M.

% Each node must belong to exactly one connection
:- linked(Z1,N),linked(Z2,M), N != M, Z1 != Z2, uedge(Z1,X1,Y1), uedge(Z2,X1,Y2).

% A uedge can belong to exactly one connection
:-  path(N,X1,Y1), path(M,X1,Y2), Y1 != Y2, N != M.
:-  path(N,X1,Y1), path(M,X2,Y1), X1 != X2, N != M.

% Each node can have exactly two outgoing edges
:- linked(Z1,N), linked(Z2,N), linked(Z3,N), Z1 != Z2, Z2 != Z3, Z3 != Z1,
   uedge(Z1,X1,Y1), uedge(Z2,X1,Y2), uedge(Z3,X1,Y2).

% Each linked uedge must belong to exactly one path
pippo :- linked(Z,N), uedge(Z,X,Y), not path(N,X1,X), connection(N,X1,Fv1), X1 != Y, X1 != X.


% OUTPUT
link(Z) :- linked(Z,Fv1).
