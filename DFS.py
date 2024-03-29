#8 DFS



def dfs(graph, start, visited=None):

    if visited is None:

        visited = set()

    visited.add(start)



    print(start)



    for next_node in graph[start] - visited:

        dfs(graph, next_node, visited)

    return visited



# Take input from the user to build the graph

graph = {}

num_edges = int(input("Enter the number of edges: "))

for _ in range(num_edges):

    edge = input("Enter an edge in the format 'node1 node2': ").split()

    node1, node2 = edge

    if node1 not in graph:

        graph[node1] = set()

    if node2 not in graph:

        graph[node2] = set()

    graph[node1].add(node2)



start_node = input("Enter the starting node: ")

dfs(graph, start_node)
