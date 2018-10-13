# Dijkstra's Algorithm
[@introduction_to_algorithms ch. 24, ch. 24.3]

\(\operatorname{Initialize-Single-Source}(G, s)\)

1) **for** each \(v∈G.V\)
2)   \(v.d = ∞\)
3)   \(v.π = NIL\)
4) \(s.d=0\)

\(\operatorname{Relax}(u,v,w)\)

1) **if** \(v.d > u.d + w(u,v)\)
2)   \(v.d = u.d + w(u,v)\)
3)   \(v.π = u\)

\(\operatorname{Dijkstra}(G,w,s)\)

1) \(\operatorname{Initialize-Single-Source}(G, s)\)
2) \(S=∅\)
3) \(Q=G.V\)
4) **while** \(Q≠∅\)
5)   \(u = \operatorname{Extract-Min}(Q)\)
6)   \(S=S∪\{u\}\)
7)   **for** each vertex \(v∈G.Adj[u]\)
8)     \(\operatorname{Relax}(u,v,w)\)

where

- \(v.d\) is the upper bound on the weight of a shortest path from \(s\) to \(v\) (i.e, a shortest path estimate).
- \(v.π\) is the predesessor node.

**Input**:

- A graph \(G=(V,E)\)
- Weigh function \(w:E→ℝ^{+}\)
- Souce vertex \(s∈V\)

**Output**: A path \(p=⟨...⟩\) such that ...

- constructed by following the predesessors


## References
