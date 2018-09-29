## Question 9
A **number maze** is an \(n×n\) grid of positive integers. A token starts in the upper left corner; your goal is to move the token to the lower-right corner. On each turn, you are allowed to move the token up, down, left, or right; the distance you may move the token is determined by the number on its current square . You are never allowed to move the token off the edge of the board.

Describe and analyze an efficient algorithm that either returns the minimum number of moves required to solve a given number maze, or correctly reports that the maze has no solution.

---

A number maze can be denoted as \(n×n\) matrix \(X\) in which the elements \(x_{i,j}\) are positive integers \(ℕ\) denoting distance \(d\) you are allowed to move *up*, *down*, *right* or *left* from the position \((i,j)\). The move is allowed only if the new position is still within the indices of the matrix \(X\).

\[
X={\begin{bmatrix}
x_{1,1}&x_{1,2}&\cdots &x_{1,n}\\
x_{2,1}&x_{2,2}&\cdots &x_{2,n}\\
\vdots &\vdots &\ddots &\vdots \\
x_{n,1}&x_{n,2}&\cdots &x_{n,n}
\end{bmatrix}}.
\]

In order to find the *shortest path* from position \((1,1)\) to \((n,n)\) if such exists, the matrix can be though as *unweighted directed graph* \(G=(V,E)\) in which each cell \((i,j)\) in the matrix \(X\) corresponds to a vertex \(v_{i,j}\) and the four possible edges from each vertex are given by the value \(d=x_{i,j}\) denoting the distance we can move up, down, right or left

\[
v_{i,j}→v_{i+d,j}, \mathrm{if }\,1≤i+d≤n \\
v_{i,j}→v_{i-d,j}, \mathrm{if }\,1≤i-d≤n \\
v_{i,j}→v_{i,j+d}, \mathrm{if }\,1≤j+d≤n \\
v_{i,j}→v_{i,j-d}, \mathrm{if }\,1≤j-d≤n.
\]

The shortest path problem for unweighted graphs translates into the problem of finding the least number of moves from start to end. This problem can be solved using *Breadth-first search*. The worst-case time complexity for breath-first search is \[O(|V|+|E|).\] For number maze, the number of vertices is \[|V|=n^2\] and number of edges is bounded by \[|E| < 4n^2.\] Therefore the sum is bouded by \[|V|+|E| < 5⋅n^2 \] and the time complexity of solving a number maze is \[O(n^2).\]
