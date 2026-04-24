graph_b = {
    'A': [('B', 22), ('D', 30),('E',25)],
    'B': [('D', 11),('C', 20)],
    'C': [],
    'D': [('F', 10)],
    'E': [('F', 25),('G', 40)],
    'F': [('G', 12)],
    'G': [('H', 6)],
    'H': []
}
edges = []

for node, neighbors in graph_b.items():
    for neighbor in neighbors:
        edges.append((node, neighbor[0], neighbor[1]))

print(edges)