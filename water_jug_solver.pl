% Facts
capacity(jug1, 4).
capacity(jug2, 3).
% Initial state
initial_state(state(0, 0)).
% Transitions
move(state(X, Y), state(4, Y)) :- X < 4.
move(state(X, Y), state(X, 3)) :- Y < 3.
move(state(X, Y), state(0, Y)) :- X > 0.
move(state(X, Y), state(X, 0)) :- Y > 0.
move(state(X, Y), state(4, NewY)) :- X + Y >= 4, Y > 0, NewY is Y - (4 - X).
move(state(X, Y), state(NewX, 3)) :- X + Y >= 3, X > 0, NewX is X - (3 - Y).
move(state(X, Y), state(NewX, 0)) :- X + Y < 3, Y > 0, NewX is X + Y.
move(state(X, Y), state(0, NewY)) :- X + Y < 4, X > 0, NewY is X + Y.
% Goal state
goal(state(2, _)).
goal(state(_, 2)).
% Depth-first search to find a solution
solve(State, _) :-
    goal(State),
    write('Solution found: '), write(State), nl.
solve(State, Visited) :-
    move(State, NextState),
    \+ member(NextState, Visited),
    write('Moving to: '), write(NextState), nl,
    solve(NextState, [NextState | Visited]).

% Query to start the search
solve :-
    initial_state(InitialState),
    solve(InitialState, [InitialState]).