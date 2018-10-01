---
title: Question 7 - Kth Smallest Element Algorithm
date: "2018-09-30"
author: "Jaan Tollander de Balsch"
header-includes: \usepackage{unicode-math}
---
Given two sorted arrays \(A[1…n]\) and \(B[1…n]\), describe an algorithm that find the \(k\)-th smallest element in \(A∪B\) in \(O(\log n)\) time.

---

The \(k\)-th element algorithm [@kth_element]

**Input**:

1) Sorted array \(A=⟨a_1,…,a_m⟩\)
2) Sorted array \(B=⟨b_1,…,b_n⟩\)
3) Integer \(k∈\{1,2,…,m+n\}\)

**Output**: \(k\)-th smallest element in \(A⁠∪B\).

**Recursive Case**: The recursive step in the divide and conquer scheme for finding the \(k\)-th element works by excluding as many elements possible as from either array \(A\) or \(B\) that are quaranteed not to be the \(k\)-th smallest element. The algorithm achieves this by excluding \[h=⌊k/2⌋\] elements per recursive step by choosing one element, \(a_i\) and \(b_j\), from each array such that

\[
\begin{aligned}
i&=\min(m, h) \\
j&=\min(n, h)
\end{aligned}
\]

By choosing the indices this way, will assure that the condition \(i+j≤k\) holds which is important for the \(k\)-th smallest element not to be excluded. The algorithm will then compare these two elements so that the correct half will be excluded.

a) If \(b_j < a_i\) then exclude elements \(⟨b_1,…,b_j⟩\) from the search. New inputs will be:
    1) \(A_2=A\)
    2) \(B_2=⟨b_{j+1},…,b_n⟩\)
    3) \(k_2=k-j\)
b) If \(a_i ≤ b_j\) then exclude elements \(⟨a_1,…,a_i⟩\) from the search. New inputs will be:
    1) \(A_2=⟨a_{i+1},…,a_m⟩\)
    2) \(B_2=B\)
    3) \(k_2=k-i\)

**Base Case**:

a) If either array is empty the \(k\)-th smallest element is the \(k\)-th element in the not empty array because the array is sorted.
b) If \(k=1\) then the \(k\)-th smallest element is the minimum of elements \(a_1\) and \(b_1\) \[\min(a_1, b_1).\]


## References
