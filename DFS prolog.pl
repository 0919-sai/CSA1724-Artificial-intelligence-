% Define edges between nodes

edge(a, b).

edge(a, c).

edge(b, d).

edge(b, e).

edge(c, f).

edge(c, g).



% Depth-First Search

dfs(Start, Goal, Path) :-

    dfs(Start, Goal, [Start], Path).



dfs(Goal, Goal, Visited, [Goal|Visited]).

dfs(Current, Goal, Visited, Path) :-

    edge(Current, Next),

    \+ member(Next, Visited), % Ensure we haven't visited this node before

    dfs(Next, Goal, [Next|Visited], Path).
