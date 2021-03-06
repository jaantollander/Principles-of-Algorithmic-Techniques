---
title: Question 2 - Complexity of Recurrence Relation
date: "2018-09-30"
author: "Jaan Tollander de Balsch"
header-includes: \usepackage{unicode-math}
---
Let \(T(n)\) be a functions such that \[T(n)≤T(n/5)+T(3n/10)+O(n)\] and \(T(j)=1\) for all \(j < 10\). Prove that \(T(n)=O(n)\).

---

From the *Introduction to algorithms* [@introduction_to_algorithms], chapter 4.3 *The substitution method for solving recurrences*.

\(T(n)=O(n)\) if and only if there exists a positive real number \(c\) and a real number \(n_0\) such that \(T(n)≤cn\) for all \(n≥n_0\). If we assume that \(T(n)=O(n)\) is true then there exists positive real numbers \(c_1\) \(c_2\) and \(c_3\) such that

\[
\begin{aligned}
T(n)&≤T(n/5)+T(3n/10)+O(n) \\
&≤c_1 (n/5) + c_2 (3n/10) + c_3 n \\
&= (1/5 c_1 + 3/10 c_2 + c_3) n \\
&≤cn.
\end{aligned}
\]

We have substituted the inequalities \[T(n/5)≤c_1 (n/5)\] and \[T(3n/10)≤c_2 (3n/10)\] and the constant \(c\) is chosen such that \[c≥(1/5 c_1 + 3/10 c_2 + c_3).\]

We need to also check the base case for the inductive proof. \[T(1)=1≤c⋅1\] For which \(c\) can be chosen to be larger than \(1\) for the claim to hold true.


## References
