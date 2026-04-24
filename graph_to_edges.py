graph_a = {
    'A': ['B', 'C'],
    'B': ['D', 'E'],
    'C': ['F'],
    'D': ['G'],
    'E': ['H'],
    'F': [],
    'G': [],
    'H': []
}

edges = []
# Iterate through the graph and create edges as pairs (a, b)
for node, neighbors in graph_a.items():
    for neighbor in neighbors:
        edges.append((node, neighbor))
print(edges)