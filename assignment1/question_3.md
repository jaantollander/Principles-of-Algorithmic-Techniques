## Question 3
The Fibonacci numbers \(F_0, F_1, F_2, …\) are defined by the rule \[F_0=0, F_1=1, F_n=F_{n-1}+F_{n-2}, n≥2.\] In this problem we will confirm that this sequence grows exponentially fast and obtain some bounds on its growth.

1) Use induction to prove that \(F_n≥2^{0.5n}\) for \(n≥6\).
2) Find a constant \(c < 1\) such that \(F_n≤2^{cn}\) for all positive integer \(n\). Show that your answer is correct.
3) What is the largest \(c\) you can find for which \(F_n=Ω(2^{cn})\)

---

Lets prove that \(F_n≥2^{0.5n}\) for \(n≥6\) using induction.

1) Base case \(n=6\): \[F_6=8≥2^{0.5⋅6}\]
2) Step case \(n\): \[
\begin{aligned}
F_n&=F_{n-1}+F_{n-2} \\
   &≥2^{0.5⋅(n-1)}+2^{0.5⋅(n-2)} \\
   &=2^{0.5n}⋅(2^{0.5⋅(-1)}+2^{0.5⋅(-2)}) \\
   &≥2^{0.5n}
\end{aligned}
\]
3) Step case \(n+1\): \[
\begin{aligned}
F_{n+1}&=F_n+F_{n-1} \\
       &≥2^{0.5n}+2^{0.5⋅(n-1)} \\
       &=2^{0.5n}⋅(1+2^{0.5⋅(-1)}) \\
       &≥2^{0.5⋅n}⋅2^{0.5} \\
       &=2^{0.5⋅(n+1)}
\end{aligned}
\]
