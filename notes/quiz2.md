2) There exists a graph \(G\) with \(6\) vertices whose vertex degrees are \(1, 2, 3, 4, 4, 5\).
    - `false` because `sum(1, 2, 3, 4, 4, 5)=19≠12` (degree sum formula).

3) In an \(n\)-by-\(n\) grid graph, let \(s\) and \(t\) be any two opposite corner nodes. Then the number of shortest paths from \(s\) to \(t\) is exponential in \(n\).
    - `false`

4) Let \(C\) be a cycle on \(n\) nodes. There are exactly \(n\) non-isomorphic spanning trees of \(C\).
    - `false` there are \(n\) isomorphic spanning trees

5) There is a bipartite graph that contains a cycle of length \(10211\).
    - `false` cycle length in bipartite graph can only be even number

6) Let \(G\) be a graph. Which of the following quantity may increase if an edge is added into graph \(G\)? More formally, what happens if we turn \(G=(V,E)\) into \(G'=(V,E∪\{e\})\).
    - Degree of a vertex \(v\): `true`
    - The number of connected components of \(G\): `false`
    - The size of maximum clique in \(G\): `true`
    - The length of the shortest cycle in \(G\): `false`

7) Let \(G\) be a graph. Which of the following quantity may increase if an edge is removed from graph \(G\)? More formally, what happens if we turn \(G=(V,E)\) into \(G'=(V,E-\{e\})\) where \(e\) is an edge in \(G\).
    - The size of maximum independent set in \(G\): `true`
    - The diameter of \(G\): `true`
    - The maximum degree of \(G\): `false`
    - The chromatic number of \(G\): `false`
