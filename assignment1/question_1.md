---
title: Question 1 - Solving Recurrence Relation
date: "2018-09-30"
author: "Jaan Tollander de Balsch"
header-includes: \usepackage{unicode-math}
---
Solve the recurrence \[T(n)=T(3n/4)+1, T(1)=1\] by using iterative method. You may assume that \(n=4^k\) for some integer \(k\).

---

Using iteration on the recurrence relation we obtain

\[
\begin{aligned}
T(1)&=1\\
T(4/3)&=T(1)+1=2\\
T((4/3)^2)&=T(4/3)+1=3\\
& ⋮ \\
T((4/3)^k)&=k+1.
\end{aligned}
\]

By substituting \[x=(4/3)^k ⇔ k=\log_{4/3} x\]we obtain a solution to the recurrence relation \[T(x)=\log_{4/3} x + 1.\]
