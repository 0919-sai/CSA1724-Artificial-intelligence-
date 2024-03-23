import heapq

def heuristic(state):
    goal = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    return sum(abs(x - y) for x, y in zip(state, goal))

def find_next(state):
    moves = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    zero_index = state.index(0)
    result = []
    for move in moves:
        new_index = (zero_index // 3 + move[0]) * 3 + (zero_index % 3 + move[1])
        new_state = list(state)
        new_state[zero_index], new_state[new_index] = new_state[new_index], new_state[zero_index]
        result.append(tuple(new_state))
    return result

def solve(initial_state):
    frontier = []
    heapq.heappush(frontier, (0, initial_state, [initial_state]))
    explored = set()
    while frontier:
        _, state, path = heapq.heappop(frontier)
        if state in explored:
            continue
        explored.add(state)
        if state == (0, 1, 2, 3, 4, 5, 6, 7, 8):
            return path
        for next_state in find_next(state):
            if next_state not in explored:
                heapq.heappush(frontier, (heuristic(next_state) + len(path), next_state, path + [next_state]))
    return None

initial_state = (1, 2, 3, 4, 0, 5, 6, 7, 8)
print(solve(initial_state))
