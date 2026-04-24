%Edges (Directed Edges)
edges(s, a).
edges(s, b).
edges(a, c).
edges(a, e).
edges(b, e).
edges(e, g).

%Path (Recursive rule)
path(X, Y) :- edges(X, Y). %direct edge
path(X, Y) :- edges(X, Z), path(Z, Y). %indirect edge (using recusion)