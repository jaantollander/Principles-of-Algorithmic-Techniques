---
title: Home Assignment 3
author: Jaan Tollander de Balsch
date: \today
header-includes: \usepackage{unicode-math}
---
## 1.1 Independent Set on Trees
![Two examples of independent sets on trees. The figure visualizes the depth of the tree, the values inside the vertices denote the value of the function \(I(u)\) for that vertex and the darkened vertices that belong to the independent set. \label{fig1}](figures/independent_set_on_trees.png)

The subproblem for the independent set on tree problem is given as [@algorithms_book, ch. 6.7]

\[
I(u) = \text{size of largest independent set of subtree hanging from } u
\]

The recursive formula

\begin{equation}
I(u) = \max \left\{1+\sum_{\text{grandchildren } w \text{ of } u} I(w), \sum_{\text{chilren } w \text{ of } u} I(w)\right\}.
\label{largest-subtree}
\tag{largest-subtree}
\end{equation}

If vertex \(u\) has no chilren and therefore no grandchildren then \(I(u)=1\) because the sums in the formula have value \(0\). This means that all leaf vertices belong to the independent set. For  non-leaf vertices, only those vertices whose none of their chilren belong to the independent set, belong to the independent set. The figure \ref{fig1} visualizes this.

The linear time nature \(O(|V|+|E|)\) of the algorithm stems from its resemblense to graph search algorithms like DFS and BFS. By starting the recursion from the root vertex, the recursion will continue until the top of the tree is reached, then it will start folding back and computing the value for the function \(\eqref{largest-subtree}\). The algorithm can also be modified to mark whether it belongs to the independent set or not by the rules mentioned above. The independent set can then be reconstructed by collecting all the marked vertices.


## 1.2 Mr. Trump's Study Planning
Given a set of courses \(\{1,…,n\}\) let \[S=\{c_1,…,c_n\}\] be a set where \(c_i∈ℕ\) is a positive integer denoting the credits avarded from a particular course. The penalty incurred per semester is defined \[p(x)=(30-x)^2,\] where \(x\) is the amount of credits received from that semester.

---

An algorithm that will determine whether there is a way to complete the degree with zero penalty works as follows:

1) Add elements to sum \(x = c_1 + c_2 + ... + c_i\) until:

    a) The penalty \(p(x)\) of the sum equals to zero (checks every time when new element is added). Then from step 1, start adding elements to a new sum starting from element \(c_{i+1}\) and repeat the loop.

    b) Run out of elements. If the penalty of the sum doesn't equal to zero there is no way to complete the degree with zero penalty. If it does equal to zero there is a way to complete the degree with zero penalty.

---

Let the penalty of a set of elements be the penalty of the sum of its elements \[p(S') = p(\operatorname{sum}(S')).\]

The objective is to find a partition of the set \(S = S_1 ∪ S_2 ∪ … ∪ S_k\) such that the sum of the penalties of the sets is minimized

\[\min_{S_1, S_2, ..., S_k} p(S_1) + p(S_2) + ... + p(S_k).\]

In this case, the partitions case must be disjoint and the elements in the paritions consecutive, i.e. the set \(S_1\) contains the elements \(c_1,c_2,…,c_{i_1}\) then set \(S_2\) contains the elements \(c_{i_1},c_{i_1+1}…,c_{i_2}\) and so forth. The problem can solved using dynamic programming approach similar to rod cutting [@introduction_to_algorithms, ch. 15.1]. The solution start with the recursive definition of the minimization

...

\[
r(S) = \min(p(S),
r(\{s_1\}) + r(\{s_2,...s_n\}), \\
r(\{s_1,s_2\}) + r(\{s_2,...s_n\}),..., \\
r(\{s_1,...,s_{n-1}\}) + r(\{s_n\}))
\]

<!-- \(p(\operatorname{sum}(S_i)) + p(\operatorname{sum}(S_{i+1}))\) vs \(p(\operatorname{sum}(S_i∪S_{i+1}))\) -->


## 1.3 Nidia & Candies, Revisited
Given a set of candies \[S=\{c_1,…,c_m\}\] where \(c_i∈ℕ\) is a positive integer denoting the calories in a particular candy and \[C=\operatorname{sum}(S)\] denotes the total amount of calories in all candies, divide candies between *two people* such that each one receives equal amount of calories. This means finding two *disjoint subsets* \(S'⊂S\) and \(S''⊂S\) such that their sums are equal \[\operatorname{sum}(S') = \operatorname{sum}(S'').\]

### Part 1
If all candies are divided, the two subsets are  \(S'⊂S\) and \(S''=S-S'\) then \[\operatorname{sum}(S') = \operatorname{sum}(S'') = C/2.\] Therefore the algorithm needs to only find a subset \(S'\) whose sum equal to the constant \(C/2\).

This problem is know as the [subset sum problem](https://en.wikipedia.org/wiki/Subset_sum_problem) which can be solved using dynamic programming.

- Special case of knapsack. Solve by solving the knapsack problem without repetition then check if the knapsack weights exactly the constant.
- [@algorithms_book, pg. 257, ch. 6.4]
- [@introduction_to_algorithms, ch. 35.5]

### Part 2
- TODO: use the algorithm above
- TODO: choose a set \(S'\) then try to find \(S''\) such that \(\operatorname{sum}(S'') = \operatorname{sum}(S')\). Think \(\operatorname{sum}(S')\) as constant.



## References
