---
title: Question 6 - Fake Gold Coin Detection
date: "2018-09-30"
author: "Jaan Tollander de Balsch"
header-includes: \usepackage{unicode-math}
---
There are \(n\) gold coins, one of which is a fake. All gold coins have the same weight, and the fake coin has different weight. You are allowed to use a balance whether two subsets of coins have equal weights. Describe a strategy that uses \(O(\log n)\) measurements of balance and find a fake coin.

---

This algorithms assumes that \(n≥3\). In the case \(n∈\{1,2\}\) it is impossible to determine the fake coin using a balance. The recursion starts with \(n_1=n\) coins.

1) Split the stack of \(n_i\) coins into \(3\) *stacks* of equal size. The stacks will be of size \(⌊n_i/3⌋\).  If the number of coins is not divisible by \(3\), there will be a *leftover stack* of \(1\) or \(2\) coins (\(\mod(n,3)\)).
2) Lets denote the weights of the three stacks by \(w_1\), \(w_2\) and \(w_3\). In order to figure out which stack has the fake coin, we need to compare each of the stack with each other using the balance. There are four different scenarios:
    I) If \(w_1≠w_2 ∧ w_1≠w_3 ∧ w_2=w_3\) then the fake coin is in the *stack 1*.
    II) If \(w_1≠w_2 ∧ w_1=w_3 ∧ w_2≠w_3\) then the fake coin is in the *stack 2*.
    III) If \(w_1=w_2 ∧ w_1≠w_3 ∧ w_2≠w_3\) then the fake coin is in the *stack 3*.
    IV) If \(w_1=w_2 ∧ w_1=w_3 ∧ w_2=w_3\) then the fake coin is in the *leftover stack*.
3) Now we have scenarios:
    I) If fhe fake coin is in the *stack 1, 2 or 3*.
        a) If the size of the stack is \(1\) then this is the fake coin.
        a) Otherwise repeat the procedure from step 1 using the stack that has the fake coin.
    II) Otherwise the fake coin is in the *leftover stack*.
        a) If there is \(1\) coin in the leftover stack, this is the fake coin.
        b) If there is \(2\) coins in the leftover stack, take one coin from any of the stacks 1, 2 or 3, and compare the leftover coins against it. The leftover coin that has unequal weight compared to this coin is the fake coin.
