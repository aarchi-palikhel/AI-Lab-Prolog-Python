% Gender facts
male(bob).
male(tom).
male(pat).
male(jim).
male(dave).

female(pam).
female(liz).
female(mary).
female(ann).
female(sue).
female(angela).

% Parent-child relationships
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, mary).
parent(bob, ann).
parent(bob, pat).
parent(bob, sue).
parent(pat, jim).
parent(sue, dave).
parent(sue, angela).

% Define relationships
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
sister(X, Y) :- sibling(X, Y), female(X).
brother(X, Y) :- sibling(X, Y), male(X).
uncle(X, Y) :- parent(Z, Y), sibling(X, Z), male(X).
aunt(X, Y) :- parent(Z, Y), sibling(X, Z), female(X).
