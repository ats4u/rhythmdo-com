#### Groove Equation

The formal definition of the Groove Equation is as follows.

##### Quantitative Representation of a Groove Principle

A Groove Principle is quantitatively represented by:

$$
T=(L,D,P)
\in
\mathbb{R}_{>0}
\times
\mathbb{R}_{>0}
\times
\mathbb{R},
$$

where:

- $L$ is the total duration.
- $D$ is the quantitative duration of one division.
- $P$ is the P-center offset.

The relative division size and number of divisions are derived properties:

$$
r(T)=\frac{D}{L},
\qquad
N(T)=\frac{L}{D}=\frac{1}{r(T)}.
$$

Neither $r$ nor $N$ replaces the quantitative value $D$.

##### Structural types

Let:

$$
\mathcal{K}
=
\{
H,\,
M,\,
B,\,
S_1,\ldots,S_n,\,
\mathrm{MD}_1,\ldots,\mathrm{MD}_m
\}
$$

be the collection of structural types, where:

- $H$ represents a hypermeasure.
- $M$ represents a measure.
- $B$ represents a beat.
- $S_i$ represents subdivision level $i$.
- $\mathrm{MD}_i$ represents microdivision level $i$.

Structural types and structural occurrences are distinct. A symbol such as $H$
denotes a type; actual occurrences are represented by nodes of the groove tree.
For example, two nodes $h_1$ and $h_2$ may both have the structural type $H$.

A microdivision is defined as follows:

> A microdivision is a formally specified division whose temporal positions cannot be expressed as ordinary note values in the applicable notation system.

A microdivision belongs to the groove hierarchy. It is not an external timing correction.

##### Three-parameter operation

A numerical operation has exactly three parameters:

$$
O_{\lambda,\delta,c},
$$

where:

$$
\lambda>0,
\qquad
\delta>0,
\qquad
c\in\mathbb{R}_{\geq 0}.
$$

The parameters have the following meanings:

- $\lambda$ is the scaling ratio of $L$ and of the existing P-center offset.
- $\delta$ is the scaling ratio of $D$.
- $c$ is the new P-center displacement measured in new divisions.

The numerical action of the operation is:

$$
\boxed{
\operatorname{Act}
\left(
O_{\lambda,\delta,c},
(L,D,P)
\right)
=
\left(
\lambda L,\,
\delta D,\,
\lambda P+c\delta D
\right).
}
$$

Therefore:

$$
L'=\lambda L,
$$

$$
D'=\delta D,
$$

$$
P'=\lambda P+cD'.
$$

Thus, the existing P-center offset is first scaled by $\lambda$, while the new
displacement is calculated from the updated division duration $D'$. The
structural type does not form a fourth numerical parameter; it is recorded
separately by the groove tree.

The derived properties transform as:

$$
r'
=
\frac{\delta}{\lambda}r,
$$

$$
N'
=
\frac{\lambda}{\delta}N.
$$

When no ambiguity can result, write $O(T)$ for
$\operatorname{Act}(O,T)$.

Let $\mathcal O$ denote the collection of all three-parameter operations.

Centricity is a classification derived from $c$:

$$
\chi(c)=
\begin{cases}
\mathrm{postcentric},
&
c=0,
\\[4pt]
\mathrm{precentric},
&
c>0.
\end{cases}
$$

For example, $O_{4,1,0}$ is postcentric, while $O_{3,1,2}$ is
precentric with a displacement of two new divisions.

##### Checks from the normalized initial state

Let:

$$
T_0=(1,1,0).
$$

The four single-operation checks are:

$$
O_{2,1,0}(T_0)=(2,1,0),
$$

$$
O_{1,\frac12,0}(T_0)
=
\left(1,\frac12,0\right),
$$

$$
O_{2,1,1}(T_0)=(2,1,1),
$$

$$
O_{1,\frac12,1}(T_0)
=
\left(1,\frac12,\frac12\right).
$$

Applying $O_{1,\frac12,1}$ twice gives:

$$
(1,1,0)
\xrightarrow{O_{1,\frac12,1}}
\left(1,\frac12,\frac12\right)
\xrightarrow{O_{1,\frac12,1}}
\left(1,\frac14,\frac34\right).
$$

Applying $O_{2,1,1}$ twice gives:

$$
(1,1,0)
\xrightarrow{O_{2,1,1}}
(2,1,1)
\xrightarrow{O_{2,1,1}}
(4,1,3).
$$

Finally, if the current division duration is $D=\frac12$, then applying
$O_{1,\frac13,1}$ first updates the division duration to:

$$
D'=\frac13\cdot\frac12=\frac16,
$$

and then updates the P-center offset to:

$$
P'=P+D'=P+\frac16.
$$

##### Groove structure

Let:

$$
\mathcal{T}
=
(V,E,a,\prec,\kappa)
$$

be a finite rooted and ordered groove tree, where:

- $V$ is the collection of structural occurrences.
- $E$ is the collection of parent--child structural relations.
- $a$ is the anchor occurrence and root.
- $\prec$ records temporal or structural order among comparable occurrences.
- $\kappa:V\to\mathcal K$ assigns one structural type to each occurrence.

Thus, repeated occurrences retain separate identities while sharing a type. For
example:

$$
h_1\neq h_2,
\qquad
\kappa(h_1)=\kappa(h_2)=H.
$$

Each non-anchor occurrence is assigned exactly one three-parameter operation:

$$
\Omega
:
V\setminus\{a\}
\longrightarrow
\mathcal O,
$$

$$
\boxed{
\Omega(v)
=
O_{\lambda_v,\delta_v,c_v}.
}
$$

The structural type of $v$ remains available from $\kappa(v)$ and is not
duplicated in $\Omega(v)$.

The normalized anchor state is normally:

$$
T_a=T_0.
$$

The unit durations in $T_0$ are conventional references; they do not require
the anchor to be a quarter note.

##### Predefined operation order

Operation order is derived from a selected rooted path in the groove tree. Let:

$$
\gamma
=
(v_0=a,v_1,\ldots,v_k),
$$

where $(v_{i-1},v_i)\in E$ for every $i=1,\ldots,k$.

The structural schema of the path is:

$$
\boxed{
\Sigma_\gamma
=
(\kappa(v_1),\ldots,\kappa(v_k)).
}
$$

Its operation order is inherited from the path:

$$
\Omega(v_i)
\prec_{\mathrm{op}}
\Omega(v_j)
\quad\Longleftrightarrow\quad
i<j.
$$

Thus, operations are written and applied from left to right. There is no
universal coarse-to-fine word independent of the groove tree.

##### Operation word

An operation word is derived from the canonical node assignment along the
selected path:

$$
\boxed{
\Omega_\gamma
=
\left(
\Omega(v_1),
\ldots,
\Omega(v_k)
\right).
}
$$

The leftmost operation is applied first.

Starting with $T_{v_0}=T_a$, define:

$$
T_{v_i}
=
\operatorname{Act}
\left(
\Omega(v_i),
T_{v_{i-1}}
\right).
$$

The evaluation of the complete operation word is:

$$
\operatorname{Eval}(\Omega_\gamma,T_a)
=
T_{v_k}.
$$

Using standard function composition:

$$
\operatorname{Eval}(\Omega_\gamma,T_a)
=
\Omega(v_k)
\circ\cdots\circ
\Omega(v_2)
\circ
\Omega(v_1)(T_a).
$$

The same order can be shown with arrows:

$$
T_a
\xrightarrow{\Omega(v_1)}
T_{v_1}
\xrightarrow{\Omega(v_2)}
T_{v_2}
\longrightarrow\cdots\longrightarrow
T_{v_k}.
$$

Occurrences on different paths are not silently combined into one operation
word. Each selected path determines its own schema and operation word.

##### Closed-form evaluation

For a selected path $\gamma$, write:

$$
T_a=(L_0,D_0,P_0)
$$

and:

$$
\Omega(v_i)
=
O_{\lambda_i,\delta_i,c_i}.
$$

The final path state is:

$$
L_k
=
L_0
\prod_{i=1}^{k}\lambda_i,
$$

$$
D_k
=
D_0
\prod_{i=1}^{k}\delta_i,
$$

$$
P_k
=
P_0
\prod_{i=1}^{k}\lambda_i
+
D_0
\sum_{i=1}^{k}
\left(
c_i
\prod_{j=1}^{i}\delta_j
\prod_{j=i+1}^{k}\lambda_j
\right).
$$

Consequently:

$$
r_k
=
r_0
\prod_{i=1}^{k}
\frac{\delta_i}{\lambda_i},
$$

$$
N_k
=
N_0
\prod_{i=1}^{k}
\frac{\lambda_i}{\delta_i}.
$$

##### Commutativity

For any state $T$, the $L,D$ projection is commutative:

$$
\pi_{L,D}
\left(
(O_2\circ O_1)(T)
\right)
=
\pi_{L,D}
\left(
(O_1\circ O_2)(T)
\right).
$$

Let:

$$
O_i=O_{\lambda_i,\delta_i,c_i}.
$$

The P-center components of the two possible orders are:

$$
\pi_P
\left(
(O_2\circ O_1)(T)
\right)
=
\lambda_2\lambda_1P
+
\left(
\lambda_2c_1\delta_1
+
c_2\delta_2\delta_1
\right)D,
$$

and:

$$
\pi_P
\left(
(O_1\circ O_2)(T)
\right)
=
\lambda_1\lambda_2P
+
\left(
\lambda_1c_2\delta_2
+
c_1\delta_1\delta_2
\right)D.
$$

Therefore, the complete transformations commute exactly when:

$$
\boxed{
c_1\delta_1(\lambda_2-\delta_2)
=
c_2\delta_2(\lambda_1-\delta_1).
}
$$

They do not commute in general because both the scaling of the existing
P-center offset and the displacement based on the current division duration
depend on operation order:

$$
(O_2\circ O_1)(T)
\neq
(O_1\circ O_2)(T)
$$

in general.

Pure postcentric scaling operations commute because:

$$
c_1=c_2=0.
$$

Even when operations commute numerically, their structural order remains part of the groove description.

##### Boundary behavior

Each division-bearing occurrence may have a boundary rule:

$$
\beta
:
V
\longrightarrow
\{
\mathrm{reset},
\mathrm{continuous}
\}.
$$

If:

$$
N=\frac{L}{D}=\frac{p}{q}
$$

in lowest terms, a continuous division realigns with its parent after:

$$
\boxed{
qL=pD.
}
$$

Therefore:

$$
N\in\mathbb{N}
\quad\Rightarrow\quad
\text{closure within one parent occurrence},
$$

$$
N\in\mathbb{Q}_{>0}
\quad\Rightarrow\quad
\text{finite cross-occurrence closure},
$$

$$
N\in
\mathbb{R}_{>0}\setminus\mathbb{Q}
\quad\Rightarrow\quad
\text{no exact closure}.
$$

##### Temporal realization

The normalized value $1$ is an abstract reference duration.

Let $\tau>0$ specify its concrete duration. Define:

$$
R_\tau(L,D,P)
=
(\tau L,\tau D,\tau P).
$$

If the anchor is conventionally interpreted as a quarter-note beat, then
$\tau$ is the duration of that quarter-note beat.

##### Formal definition of the Groove Equation

The normalized Groove Equation is:

$$
\boxed{
\mathfrak{G}
=
\left(
\mathcal{T},\,
T_a,\,
\Omega,\,
\beta
\right).
}
$$

Its numerical realization is:

$$
\boxed{
\operatorname{GE}_\tau(\mathfrak{G})
=
\left(
R_\tau(T_v)
\right)_{v\in V}.
}
$$

Here, each $T_v$ is evaluated along its unique rooted path, with continuation
across boundaries governed by $\beta$.

Numerically identical realizations do not necessarily imply structurally identical grooves:

$$
\boxed{
\operatorname{GE}_\tau(\mathfrak{G}_1)
=
\operatorname{GE}_\tau(\mathfrak{G}_2)
\nRightarrow
\mathfrak{G}_1
=
\mathfrak{G}_2.
}
$$

Thus, the Groove Equation consists of:

$$
\boxed{
\text{groove tree}
+
\text{three-parameter node-operation assignment}
+
\text{boundary behavior}
+
\text{numerical realization}.
}
$$

##### Example: “Near the Cross”

<div class="center-box"><iframe width="560" height="315" src="https://www.youtube.com/embed/JdhUcR_MbTw?si=UzrCtMxmUPJAqqwj" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></div>

Let the relevant non-anchor occurrences be:

$$
V_{\text{Near the Cross}}\setminus\{a\}
=
\{h_1,h_2,m,b,s_1\}.
$$

Their structural types are:

$$
\kappa(h_1)=\kappa(h_2)=H,
\qquad
\kappa(m)=M,
\qquad
\kappa(b)=B,
\qquad
\kappa(s_1)=S_1.
$$

Define the node-operation assignment:

$$
\begin{aligned}
\Omega_{\text{Near the Cross}}(h_1)
&=
O_{4,1,0},
\\
\Omega_{\text{Near the Cross}}(h_2)
&=
O_{8,1,0},
\\
\Omega_{\text{Near the Cross}}(m)
&=
O_{3,1,2},
\\
\Omega_{\text{Near the Cross}}(b)
&=
O_{1,\frac13,2},
\\
\Omega_{\text{Near the Cross}}(s_1)
&=
O_{1,\frac13,2}.
\end{aligned}
$$

These assignments alone do not assert that all five operations belong to one
linear word. If the groove tree declares the rooted path:

$$
\gamma
=
(a,h_1,h_2,m,b,s_1),
$$

then its derived operation word is:

$$
\boxed{
\Omega_\gamma
=
\left(
O_{4,1,0},\,
O_{8,1,0},\,
O_{3,1,2},\,
O_{1,\frac13,2},\,
O_{1,\frac13,2}
\right).
}
$$

If $h_1$ and $h_2$ are consecutive siblings, their order is recorded by
$h_1\prec h_2$ or $h_2\prec h_1$. If they are alternatives, they are
incomparable under $\prec$. In either case, they occur on separate rooted paths
and are not multiplied together by default. The path-derived word records only
the evaluation order of its selected path.
