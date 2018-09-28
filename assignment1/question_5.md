## Question 5
Given an array \(A[1…n]\), we say that entry \(A[i]\) is *locally minimum* if \[A[i]=\min(A[i-1],A[i],A[i+1]);\] for \(i=1\), it is locally minimum if \(A[i] < A[i+1]\) and for \(i=n\), when \(A[i] < A[i-1]\).

Describe an algorithm that finds a local minimum in an array \(A\) in time \(O(\log n)\). Explain your algorithm either in clear English or a clear pseudocode.

---

**Input**: An array \(A=⟨a_1,…,a_n⟩\).

**Output**: An index \(i\) such that element \(a_i\) meets the requirement of being *locally minimum*. Being locally minimum is defined as

\[
\begin{cases}
a_i < a_{i+1} & i = 1 \\
a_i < a_{i-1} & i = n \\
a_i = \min(a_{i-1}, a_i, a_{i+1}) & \text{otherwise}
\end{cases}
\]

It should be noted that \(a_i = \min(a_{i-1}, a_i, a_{i+1})\) is equivalent to \((a_i ≤ a_{i-1}) ∧ (a_i ≤ a_{i+1})\).

**Local Minimum Algorithm**:

1) In the trivial case \(n=1\) local minimum \(i=1\).
2) In the trivial case \(n=2\), if \(a_1≤a_2\) then \(i=1\), otherwise \(i=2\).
3) Otherwise when \(n≥3\), we'll need to *divide and conquer*. The algorithm works like a binary search. First it finds the middle index \(mid\) from the current slice, from index \(low\) to \(high\), of the array \(A\). Initially the slice is \(low=1\) to \(high=n\). \[mid = low + ⌊(high-low)/2⌋\]
    a) *Base Case*: If \(mid=1\) or \(mid=n\) or \((a_{mid} ≤ a_{mid-1}) ∧ (a_{mid} ≤ a_{mid+1})\) local minimum is at \(i=mid\).
    b) *Recursive Case*: If the base case is not local minimum then we'll divide the search space and evaluate the recursive case with the new parameters.
        a) If \(a_{mid-1} < a_{mid}\) then \(low:=low\) and \(high:=mid-1\).
        b) If \(a_{mid+1} < a_{mid}\) then \(low:=mid+1\) and \(high:=high\).

The algorithm is quaranteed to find a local minimum because. Given array \(A\) where \(n≥3\) ...

We care about the

we have \(2^3=8\) possible ways that the elements \(a_{mid-1}\) and \(a_{mid+1}\) are ordered around \(a_{mid}\), i.e. they can be either *less than* `<`, *equal* `=` or *greater than* `>` \(a_{mid}\).

---

- https://www.geeksforgeeks.org/find-local-minima-array/
