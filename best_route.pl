% Question 3: Best Route by Minimum Cost
% Model cities and route costs, then find if route exists and total cost.
%
% Requirements:
% 1) route(X, Y): true if a path exists from X to Y
% 2) route_cost(X, Y, Cost): compute one possible path cost recursively
% 3) (Optional) lowest_cost(X, Y, MinCost): find minimum among possible routes

road(a, b, 4).
road(a, c, 2).
road(b, d, 5).
road(c, d, 1).
road(d, e, 3).
road(c, e, 10).

% TODO: Write your rules below
% route(X, Y) :- ...
% route_cost(X, Y, Cost) :- ...
% lowest_cost(X, Y, MinCost) :- ...

% Example queries:
% ?- route(a, e).
% ?- route_cost(a, e, C).
