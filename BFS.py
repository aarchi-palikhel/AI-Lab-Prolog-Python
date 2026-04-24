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

from collections import deque 


def bfs(tree, start):
    # Track of visited nodes
    visited = []  
    # Initialize the queue with the starting node
    queue = deque([start])  

    while queue:  
        # Dequeue a node from the front of the queue
        node = queue.popleft()  

        if node not in visited: 
            # Mark the node as visited 
            visited.append(node)  
            print(node, end=" ")  

            # Enqueue all unvisited neighbors (children) of the current node
            for neighbor in tree[node]:
                if neighbor not in visited:
                    queue.append(neighbor)  # Add unvisited neighbors to the queue
bfs(graph_a, 'A')