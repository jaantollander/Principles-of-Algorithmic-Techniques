A **graph** is an ordered pair \[G=(V, E)\] comprising a set \(V\) of vertices (or nodes or points) together with a set \(E\) of edges (or arcs or lines), which are \(2\)-element subsets of \(V\).

[Graph Theory](https://en.wikipedia.org/wiki/Graph_theory)

---

The **degree** of a vertex of a graph is the number of edges incident to the vertex, with loops counted twice. The degree of a vertex \(v\) is denoted \(\deg(v)\).

The **degree sum formula** states that, \[\sum_{c∈V}\deg(v)=2|E|.\]

[Degree (graph theory)](https://en.wikipedia.org/wiki/Degree_(graph_theory))

---

A **connected component** of an undirected graph is a subgraph in which any two vertices are connected to each other by paths, and which is connected to no additional vertices in the supergraph.

[Connected component (graph theory)](https://en.wikipedia.org/wiki/Connected_component_(graph_theory))

---

**Cycle** is a path of edges and vertices wherein a vertex is reachable form itself. \[v_1→v_2→…→v_i→v_1\]

[Cycle (graph theory)](https://en.wikipedia.org/wiki/Cycle_(graph_theory))

---

**Isomorphism** of graphs \(G\) and \(h\) is a bijection between the vertex sets of \(G\) and \(H\) \[f:V(G)→V(H)\] such that any two vertices \(u\) and \(v\) of \(G\) are adjacent in \(G\) if and only if \(f(u)\) and \(f(v)\) are adjacent in \(G\).

[Graph isomorphism](https://en.wikipedia.org/wiki/Graph_isomorphism)

---

An **independent set** is a set of vertices in a graph, no two of which are adjacent. That is, it is a set \(S\) of vertices such that for every two vertices in \(S\), there is no edge connecting the two. Equivalently, each edge in the graph has at most one endpoint in \(S\).

A **maximum independent set** is an independent set of largest possible size for a given graph \(G\). This size is called the independence number of \(G\), and denoted \(α(G)\).

[Independent set (graph theory)](https://en.wikipedia.org/wiki/Independent_set_(graph_theory))

---

**Bipartite graph** is a graph whose vertices can be divided into two disjoint and independent sets \(U\) and \(V\) such that every edge connects a vertex in \(T\) to one in \(V\).

[Bipartite graph](https://en.wikipedia.org/wiki/Bipartite_graph)

---

**Chromatic number** ...

[Graph coloring](https://en.wikipedia.org/wiki/Graph_coloring)

---

A **clique**, \(C\), in an *undirected graph* \(G=(V,E)\) is a subset of the vertices \(C⊆V\), such that every two distinct vertices are adjacent. This is equivalent to the condition that the *induced subgraph* of \(G\) induced by \(C\) is a *complete graph*.

A **maximum clique** of a graph, \(G\), is a clique, such that there is no clique with more vertices.

[Clique (graph theory)](https://en.wikipedia.org/wiki/Clique_(graph_theory))

---

A **spanning tree** \(T\) of an undirected graph \(G\) is a subgraph that is a tree which includes all of the vertices of \(G\), with minimum possible number of edges.

[Spanning tree](https://en.wikipedia.org/wiki/Spanning_tree)

---

The **eccentricity** \(ϵ(v)\) of a vertex \(v\) is the greatest geodesic distance between \(v\) and any other vertex.

The **diameter** \(d\) of a graph is the maximum eccentricity of any vertex in the graph. That is, \(d\) is the gratest distance between any pair of vertices or, alternatively, \[d=\max_{v∈V} ϵ(v).\] To find the diameter of a graph, first find the shortest path between each pair of vertices. The greatest length of any of these paths is the diameter of the graph.

[Distance (graph theory)](https://en.wikipedia.org/wiki/Distance_(graph_theory))

---

The **shortest path problem** is the problem of finding a path between two vertices in a graph such that the sum of the weights of its constituents edges is minimized.

- **single-pair shortest path problem**
- **single-source shortest path problem**

[Shortest path problem](https://en.wikipedia.org/wiki/Shortest_path_problem)

---

**Dijkstra's algorithm** is an algorithm for finding the shortest path between nodes in a graph.

[Dijkstra's algorithm](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm)
