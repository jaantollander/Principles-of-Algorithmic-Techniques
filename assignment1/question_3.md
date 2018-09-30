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

---

Lets assume that for some positive real numbers \(α\) and \(c\) and a real number \(n_0\): \[F_n≤c α^n \, \text{for all}\, n≥n_0.\]

Using the Fibonacci recurrence relation we can now form new inequality \[cα^{n-1} + cα^{n-2} ≤ cα^n.\] Divided by \(cα^{n-2} > 0\) we obtain \[α+1≤α^2 \\ α^2-α-1≥0\]

By solving the positive roots of the second order equation \[α≥\frac{1+\sqrt{5}}{2}.\]

The base case \(F_1 = 1 ≤ cα^1\) is true for example by choosing \(c=1\) therefore the induction holds true.

---

Similar analysis can be done from below \(F_n≥cα^n\) which will obtain \[α≤\frac{1+\sqrt{5}}{2}.\]

The base case \(F_1 = 1 ≥ cα^1\) is true for example by choosing \(c=1/3\) therefore the induction holds true.

---

These two case give the Fibonacci sequence tight bound \[F_n = Ω(φ^n)\] where \(φ=\frac{1+\sqrt{5}}{2}\) is the golden ratio.

---

https://math.stackexchange.com/questions/674533/prove-upper-bound-big-o-for-fibonaccis-sequence
