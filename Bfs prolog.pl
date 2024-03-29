best_first_search(Start, Goal, Path) :-

    bfs([[Start, 0, []]], Goal, [], Path).



bfs([[Goal, _, Path]|_], Goal, _, Path).

bfs([[State, Cost, Path]|Rest], Goal, Visited, Path) :-

    findall([NextState, NewCost, [NextState|Path]],

            (move(State, NextState, MoveCost),

             \+ member(NextState, Visited),

             NewCost is Cost + MoveCost),

            Children),

    append(Children, Rest, NewQueue),

    sort_queue(NewQueue, SortedQueue),

    bfs(SortedQueue, Goal, [State|Visited], Path).



sort_queue(Queue, Sorted) :-

    predsort(compare_nodes, Queue, Sorted).



compare_nodes(Order, [_, _, _], [_, _, _]) :-

    compare(Order, _, _).



move(State, NextState, Cost) :-

    % Define your move predicates here

    % Example:

    % move(State, NextState, Cost),

    % Cost is the cost of the move from State to NextState

    true.
