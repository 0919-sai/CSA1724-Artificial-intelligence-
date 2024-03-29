#7 Best First Search



def create_graph():

    graph = {}

    vertices = int(input("Enter the number of vertices: "))

    for _ in range(vertices):

        vertex = input(f"Enter vertex: ")

        neighbors = input(f"Enter neighbors of {vertex} (comma-separated): ").split(',')

        graph[vertex] = neighbors

    return graph



def bfs(graph, start_node):

    visited = []

    queue = [start_node]



    while queue:

        node = queue.pop(0)

        if node not in visited:

            visited.append(node)

            queue.extend(neighbour for neighbour in graph[node] if neighbour not in visited)



    return visited



def main():

    graph = create_graph()

    start_node = input("Enter the starting node: ")

    

    print("Following is the Breadth-First Search:")

    result = bfs(graph, start_node)

    print(' -> '.join(result))



if __name__ == "__main__":

    main()
