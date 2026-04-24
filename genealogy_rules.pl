%Facts
male(james_i).
male(charles_i).
male(charles_ii).
male(james_ii).
male(george_i).
female(elizabeth).
female(catherine).
female(sophia).
parent(james_i, charles_i).
parent(james_i, elizabeth).
parent(charles_i, catherine).
parent(charles_i, charles_ii).
parent(charles_i, james_ii).
parent(elizabeth, sophia).
parent(sophia, george_i).

%Rules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
child(X, Y) :- parent(Y, X).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
brother_of(X, Y) :- male(X), sibling(X, Y).
sister_of(X, Y) :- female(X), sibling(X, Y).