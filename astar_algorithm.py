# A* Algorithm Implementation in Python
def astaralgo(start_node, stop_node):
    # Initialize sets and dictionaries
    open_set = {start_node}
    closed_set = set()
    g = {}
    parents = {}
    g[start_node] = 0
    parents[start_node] = start_node

    while len(open_set) > 0:
        # Select node with the lowest f = g + h
        n = None
        for v in open_set:
            if n is None or g[v] + heuristic(v) < g[n] + heuristic(n):
                n = v

        if n is None:
            print("Path does not exist!")
            return None

        if n == stop_node:
            path = []
            while parents[n] != n:
                path.append(n)
                n = parents[n]
            path.append(start_node)
            path.reverse()

            total_cost = calculate_path_cost(path)
            print("Path found: {}".format(path))
            print("Total path cost: {}".format(total_cost))
            return path

        open_set.remove(n)
        closed_set.add(n)

        for m, weight in get_neighbors(n):
            if m in closed_set:
                continue

            new_g = g[n] + weight
            if m not in open_set:
                open_set.add(m)
            elif new_g >= g.get(m, float('inf')):
                continue

            g[m] = new_g
            parents[m] = n

    print("Path does not exist!")
    return None


# Helper function to calculate path cost
def calculate_path_cost(path):
    total = 0
    for i in range(len(path) - 1):
        neighbors = dict(get_neighbors(path[i]))
        total += neighbors[path[i + 1]]
    return total


# Function to get neighbors from graph_b
def get_neighbors(v):
    return graph_b.get(v, [])


# Heuristic function
def heuristic(n):
    H_dist = {
        'A': 46,
        'B': 39,
        'C': 41,
        'D': 29,
        'E': 38,
        'F': 17,
        'G': 6,
        'H': 0
    }
    return H_dist.get(n, float('inf'))


# Graph definition
graph_b = {
    'A': [('B', 22), ('D', 30), ('E', 25)],
    'B': [('D', 11), ('C', 20)],
    'C': [],
    'D': [('F', 10)],
    'E': [('F', 25), ('G', 40)],
    'F': [('G', 12)],
    'G': [('H', 6)],
    'H': []
}

# Run the algorithm
astaralgo('A', 'H')
