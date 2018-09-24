## Question 10
Let us revisit the stable matching problem. Let \(U\) be the set of universities and \(S\) be the set of students where \(|U|=|S|.\)

Each student \(s\) has a preference relation \(≺_s\) where \(u≺_s u'\) is used to denote the fact that student \(s\) prefers to go to university \(u'\) to \(u\). Similarly for the preference relation \(≺_u\) for each university \(u.\)

In class, we dicussed the face where \(≺_s\) and \(≺_u\) give complete ranking over all universities and students respectively, i.e. \(≺_s\) given a ranking over \(U\) and \(≺_u\) given a ranking over all \(S.\)

Now, we are interested in the following setting: Some students may not be interested in going to some university, i.e. Nidia (hypothetical person) may only be interested in a certain subset of universities \(U_{Nidia}⊆U\) and for other universities not in her interest, she may prefer to stay home rather that studying there. The same does for universities: Each university \(u\) may be only interested in some subset \(S_u⊆S\) of students, and prefer to not admit any other student.

1) First, explain what it means to be a stable assignment in this setting.
2) Show that in this setting, there always exists a stable assignment and it can be computed efficiently. Prove correctness and analyze the efficientcy of your algorithm.
