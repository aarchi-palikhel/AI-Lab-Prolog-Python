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
for node, neighbors in graph_a.items():
    for neighbor in neighbors:
        edges.append((node, neighbor))
print(edges)

def dfs_iterative(tree, start):
    # Track visited nodes
    visited = set()  
    stack = [start]

     # Continue until stack is empty
    while stack: 
        node = stack.pop() 
        if node not in visited:
            # Mark node as visited
            visited.add(node)  
            print(node) # current node
            # Add child nodes to stack
            stack.extend(reversed(tree[node]))  
dfs_iterative(graph_a, 'A')