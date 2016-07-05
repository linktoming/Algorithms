# Graph Terminology
- Graph: set of vertices connected pairwise by edges
- Path: sequence of vertices connected by edges
- Cycle: path whose first and last vertices are the same
- Connected: two vertices are connected if there is a path between them
- Self-loop
- Parallel Edges
- Simple Graph: graph without self-loop and parallel edges

# Graph Representation
- drawing (itunitive but can be misleading)
- set of edges
- adjacency-matrix
- adjacency-lists (most practically used)
    - *Algorithms based on iterating over vertices adjacent to v.* 
    - *Real-world graphs tend to be sparse*

## Time and Space Complexity
|representation|space|add edge|edge between v and w?|iterate over vertices adjacent to v?|
|:---|
|set of edegs|E|1|E|E|
|adjacency matrix|V^2|1*|1|V|
|adjacency lists|V+E|1|degree(V)|degree(V)|

**disallows parallel edeges*

# Graph Problems
- Path: Is there a path between s and t ?
- Shortest path: What is the shortest path between s and t ?
- Cycle: Is there a cycle in the graph?
- Euler tour: Is there a cycle that uses each edge exactly once?
- Hamilton tour: Is there a cycle that uses each vertex exactly once.
- Connectivity: Is there a way to connect all of the vertices?
- MST: What is the best way to connect all of the vertices?
- Biconnectivity: Is there a vertex whose removal disconnects the graph?
- Planarity: Can you draw the graph in the plane with no crossing edges
- Graph isomorphism: Do two adjacency lists represent the same graph?


