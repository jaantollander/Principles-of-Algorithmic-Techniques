# Dynamic Programming



# Maximum Flow
A **flow network** \(G=(V,E)\) is a directed graph.

1) Each edge has **capacity** \(c(u,v)≥0\).
2) Two special vertices: **source** \(s\) and **sink** \(t\).

A **flow** is a function \(f:V×V→ℝ\) that has two properties:

1) **capacity constraint**: For all \(u,v∈V\) \[0≤f(u,v)≤c(u,v)\]
2) **flow constraint**: For all \(u∈V-\{s,t\}\) \[∑_{v∈V}f(v,u)=∑_{v∈V}f(u,v)\]

**Maximum flow** is a flow \(f\) with maximum **value** \[|f|=∑_{v⁠∈V}f(s,v).\]

**Residual network** \(G_f=(V,E_f)\) where \[E_f = \{(u,v)∈V×V : c_f(u,v)>0\}\] and **residual capacity** \[
c_f(u,v) =
\begin{cases}
c(u,v) - f(u,v) & (u,v)∈E, \\
f(v,u) & (v,u)∈E, \\
0 & \text{otherwise.}
\end{cases}
\]

An **augmenting path** \(p\) is a simple path from \(s\) to \(t\) in the residual network \(G_f\). The residual capacity of path \(p\) is \[c_f(p)=\min\{c_f(u,v):(u,v) \text{ is on } p\}.\]

A **cut** \((S,T)\)  of flow network \(G\) is a partition of \(V\) into \(S\) and \(T=V-S\) such that \(s∈S\) and \(t∈T\).

A **minimum cut** of a network is a cut whose **capacity**  \[c(S,T)=∑_{u∈S}∑_{v∈T}c(u,v)\] is minimum over all cuts of the network.

**Max-flow Min-cut Theorem**

1) \(f\) is a maximum flow in \(G\).
2) The residul network \(G_f\) contains no augmenting paths.
3) \(|f|=c(S,T)\) for some cut \((S,T)\) of \(G\).

\(\operatorname{Ford-Fulkerson}(G,s,t)\)

1) Set \(f(u,v)=0\) for all \((u,v)∈E\)
2) **while** there exists a path \(p\) from \(s\) to \(t\) in the residual network \(G_f\)
3) ___ **for** each edge \((u,v)∈p\)
4) ___ ___ **if** \((u,v)∈E\)
5) ___ ___ ___ \(f(u,v) = f(u,v) + c_f(p)\)
6) ___ ___ **else** \(f(v,u) = f(v,u) - c_f(p)\)


# Linear Programming


# NP
