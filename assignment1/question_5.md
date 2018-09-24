## Question 5
Given an array \(A[1…n]\), we say that entry \(A[i]\) is *locally minimum* if \[A[i]=\min(A[i-1],A[i],A[i+1]);\] for \(i=1\), it is locally minimum if \(A[i] < A[i+1]\) and for \(i=n\), when \(A[i] < A[i-1]\).

Describe an algorithm that finds a local minimum in an array \(A\) in time \(O(\log n)\). Explain your algorithm either in clear English or a clear pseudocode.

---

**Input**: An array \(A=⟨a_1,…,a_n⟩\).

**Output**: An element \(a_i\) such that is meets the requirement of being *locally minimum*.

\[
\begin{cases}
a_i < a_{i+1} & i = 1 \\
a_i < a_{i-1} & i = n \\
a_i = \min(a_{i-1}, a_i, a_{i+1}) & \text{otherwise}
\end{cases}
\]

It should be noted that \(a_i = \min(a_{i-1}, a_i, a_{i+1})\) is equivalent to \((a_i ≤ a_{i-1}) ∧ (a_i ≤ a_{i+1})\).

**Divide and Conquer**: The algorithm works like a binary search. First it finds the middle index of the current slice of the array \(A\).

\(low\)?
\(high\)?

\[mid = low + ⌊(high-low)/2⌋\]

1) **Base Case**:
    a) If \(mid=1\)
    b)
    c)
2) **Recursive Case**:
    a) If \(a_{mid-1} < a_{mid}\)
    b) If \(a_{mid+1} < a_{mid}\)

TODO: why does the algorithm work?

---

- https://www.geeksforgeeks.org/find-local-minima-array/
