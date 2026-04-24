% Question 1: Ancestor and Descendant
% Write Prolog rules to find ancestor and descendant relationships.
%
% Requirements:
% 1) ancestor(X, Y): X is an ancestor of Y (parent, grandparent, etc.)
% 2) descendant(X, Y): X is a descendant of Y
% 3) Handle recursive family chains
%
% Sample facts:
parent(ram, hari).
parent(hari, sita).
parent(sita, gita).
parent(gita, manish).

% TODO: Write your rules below
% ancestor(X, Y) :- ...
% descendant(X, Y) :- ...

% Example queries:
% ?- ancestor(ram, manish).
% ?- descendant(manish, ram).
