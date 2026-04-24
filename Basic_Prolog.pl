male(shyam).
male(ram).
female(rita).
female(sita). 
parent(shyam, ram).
parent(sita, ram).
%rules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
%list operations
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
length([], 0).
length([_|T], N) :- length(T, N1), N is N1 + 1.
concatenate([], L, L).
concatenate([X|T], L, [X|R]) :- concatenate(T, L, R).
insert(X, L, [X|L]).
delete(X, [X|T], T).
delete(X, [Y|T], [Y|R]) :- delete(X, T, R).
append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).
%FactorialUsingRecursion 
factorial(0, 1).
factorial(N, F) :- N > 0, N1 is N - 1, factorial(N1, F1), F is N * F1.
% Define the base cases for Fibonacci
fibonacci(0, 0).
fibonacci(1, 1).
% Define the recursive case for Fibonacci
fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, R1),
    fibonacci(N2, R2),
    Result is R1 + R2.
% To display the Fibonacci series up to N terms
fibonacci_series(0, [0]).
fibonacci_series(N, Series) :-
    N > 0,
    findall(F, (between(0, N, I), fibonacci(I, F)), Series).
% Example query: fibonacci_series(10, Series).

%TowerOfHanoiProblem 
hanoi(1, Source, Destination, _) :-
    write('Move disk from '), write(Source), write(' to '), write(Destination), nl.
hanoi(N, Source, Destination, Auxiliary) :-
    N > 1,
    N1 is N - 1,
    hanoi(N1, Source, Auxiliary, Destination),
    hanoi(1, Source, Destination, Auxiliary),
    hanoi(N1, Auxiliary, Destination, Source).