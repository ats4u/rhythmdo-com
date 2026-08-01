#### {{<meta var.GROOVE_EQUATIONS.ja>}}

グルーヴ方程式とは、グルーヴを分析する為に、Pセンターと{{<meta var.MLWBOR.ja>}}を２つを軸にモデル化したものです。 リズム上の拍に対するPセンターの位置とグルーヴの階層及び解像度数を数式によって表す事により、分析の基礎となるモデルを定義します。

グルーヴ方程式の形式的な定義は次の通りです。


##### 数量的なグルーヴ原則の表現法

グルーヴ原則を次のように数量的に表現する：

$$
T=(L,D,P)
\in
\mathbb{R}_{>0}
\times
\mathbb{R}_{>0}
\times
\mathbb{R},
$$

ここで：

- $L$ は全体の持続時間である。
- $D$ はディヴィジョンの単位時間である。
- $P$ はPセンターのオフセット距離である。

相対的な分割サイズと分割数は、次の派生式として得られる：

$$
r(T)=\frac{D}{L},
\qquad
N(T)=\frac{L}{D}=\frac{1}{r(T)}.
$$

$r$ と $N$ のいずれも、定量値 $D$ を置き換えるものではない。


##### 構造型

次のようにおく：

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

これは構造型の集合であり、それぞれ次を表す：

- $H$ は大小節を表す。
- $M$ は小節を表す。
- $B$ は拍を表す。
- $S_i$ は細分レベル $i$ を表す。
- $\mathrm{MD}_i$ は微分割レベル $i$ を表す。

構造型と構造上の出現要素は区別される。$H$ のような記号は型を表し、
実際の出現要素はグルーヴ木のノードとして表現される。たとえば、2つの
ノード $h_1$ と $h_2$ が同じ構造型 $H$ を持つ場合がある。

::: {.callout-note title="微分割の定義"}
微分割とは、適用される記譜体系において、その時間的位置を通常の音価で表現できない、形式的に指定された分割である。

マイクロディヴィジョンはグルーヴ階層に属する。外部的なタイミング補正ではない。
:::

##### 型付き演算

完全な型付き演算を次のように定義する：

$$
O_{K;\lambda,\delta,\chi,c},
$$

ここで：

$$
K\in\mathcal{K},
\qquad
\lambda>0,
\qquad
\delta>0,
$$

$$
\chi
\in
\{
\mathrm{precentric},
\mathrm{postcentric}
\},
$$

また：

$$
c=
\begin{cases}
0,
&
\chi=\mathrm{postcentric},
\\[4pt]
c\in\mathbb{R}_{>0},
&
\chi=\mathrm{precentric}.
\end{cases}
$$

各パラメータの意味は次のとおりである：

- $K$ は構造型のラベルである。
- $\lambda$ は $L$ のスケーリング比である。
- $\delta$ は $D$ のスケーリング比である。
- $\chi$ は中心性の型である。
- $c$ は、新しい分割を単位として測定したPセンターの変位である。

型付き演算の数値的作用は次のとおりである：

$$
\boxed{
\operatorname{Act}
\left(
O_{K;\lambda,\delta,\chi,c},
(L,D,P)
\right)
=
\left(
\lambda L,\,
\delta D,\,
P+c\delta D
\right).
}
$$

したがって：

$$
L'=\lambda L,
$$

$$
D'=\delta D,
$$

$$
P'=P+cD'.
$$

構造ラベル $K$ は数値計算を変化させない。これは、演算がグルーヴ階層内のどこに属するかを記録する。

派生特性は次のように変換される：

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

曖昧さが生じない場合、$\operatorname{Act}(O,T)$ を $O(T)$ と表記する。

##### 省略形の型付き演算

中心性は、次の定義によって $c$ から一意に推定できる：

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

省略形の型付き演算を次のように定義する：

$$
\boxed{
\widetilde O_{K;\lambda,\delta,c}
=
O_{K;\lambda,\delta,\chi(c),c}.
}
$$

省略形の型付き演算全体の集合を $\widetilde{\mathcal O}$ とする。

たとえば：

$$
\widetilde O_{H;4,1,0}
$$

は後中心型のハイパーメジャー演算であり、次の演算：

$$
\widetilde O_{M;3,1,2}
$$

は、新しい分割2つ分の変位を持つ前中心型の小節演算である。

セミコロンは、構造ラベルと数値パラメータを分離する：

$$
\widetilde O_{\text{構造型};\text{数値パラメータ}}.
$$

##### グルーヴ構造

次のようにおく：

$$
\mathcal{T}
=
(V,E,a,\prec,\kappa)
$$

これは有限で、根を持ち、順序付けられたグルーヴ木である。ここで：

- $V$ は構造上の出現要素の集合である。
- $E$ は親子関係にある構造関係の集合である。
- $a$ はアンカーとなる出現要素であり、根である。
- $\prec$ は比較可能な出現要素間の時間的または構造的順序を記録する。
- $\kappa:V\to\mathcal K$ は各出現要素に1つの構造型を割り当てる。

したがって、同じ型を共有する複数の出現要素は、互いに異なる同一性を
保持する。たとえば：

$$
h_1\neq h_2,
\qquad
\kappa(h_1)=\kappa(h_2)=H.
$$

アンカー以外の各出現要素には、省略形の型付き演算を1つだけ割り当てる：

$$
\Omega
:
V\setminus\{a\}
\longrightarrow
\widetilde{\mathcal O},
$$

$$
\boxed{
\Omega(v)
=
\widetilde O_{\kappa(v);\lambda_v,\delta_v,c_v}.
}
$$

正規化されたアンカー状態は通常、次のとおりである：

$$
T_a=(1,1,0).
$$

値 $1$ は慣習的な基準持続時間であり、アンカーが四分音符であることを
必須とはしない。

##### 事前定義された演算順序

演算順序は、グルーヴ木から選択された根付き経路によって決まる。次の
ようにおく：

$$
\gamma
=
(v_0=a,v_1,\ldots,v_k),
$$

ここで、すべての $i=1,\ldots,k$ について $(v_{i-1},v_i)\in E$ である。

この経路の構造スキーマは次のとおりである：

$$
\boxed{
\Sigma_\gamma
=
(\kappa(v_1),\ldots,\kappa(v_k)).
}
$$

演算順序はこの経路から継承される：

$$
\Omega(v_i)
\prec_{\mathrm{op}}
\Omega(v_j)
\quad\Longleftrightarrow\quad
i<j.
$$

したがって、演算は左から右へ記述され、適用される。グルーヴ木から
独立した普遍的な「粗い階層から細かい階層へ」の演算列は存在しない。

##### 型付き演算列

型付き演算列は、選択された経路上の正準的なノード割り当てから導出される：

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

最も左にある演算が最初に適用される。

$T_{v_0}=T_a$ から開始し、次のように定義する：

$$
T_{v_i}
=
\operatorname{Act}
\left(
\Omega(v_i),
T_{v_{i-1}}
\right).
$$

演算列全体の評価は次のとおりである：

$$
\operatorname{Eval}(\Omega_\gamma,T_a)
=
T_{v_k}.
$$

標準的な関数合成を使用すると：

$$
\operatorname{Eval}(\Omega_\gamma,T_a)
=
\Omega(v_k)
\circ\cdots\circ
\Omega(v_2)
\circ
\Omega(v_1)(T_a).
$$

同じ順序を矢印で示すと次のようになる：

$$
T_a
\xrightarrow{\Omega(v_1)}
T_{v_1}
\xrightarrow{\Omega(v_2)}
T_{v_2}
\longrightarrow\cdots\longrightarrow
T_{v_k}.
$$

異なる経路上の出現要素が、暗黙のうちに1つの演算列へ結合されることは
ない。選択された各経路が、それぞれのスキーマと演算列を決定する。

##### 閉形式による評価

選択された経路 $\gamma$ に対して、次のようにおく：

$$
T_a=(L_0,D_0,P_0)
$$

また：

$$
\Omega(v_i)
=
\widetilde O_{\kappa(v_i);\lambda_i,\delta_i,c_i}.
$$

経路の最終状態は次のとおりである：

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
+
D_0
\sum_{i=1}^{k}
\left(
c_i
\prod_{j=1}^{i}\delta_j
\right).
$$

したがって：

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

##### 可換性

任意の状態 $T$ に対して、$L,D$ への射影は可換である：

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

完全な変換は必ずしも可換ではない。Pセンターの変位が、その時点の分割持続時間に依存するためである：

$$
(O_2\circ O_1)(T)
\neq
(O_1\circ O_2)(T)
$$

これは一般に成立する。

純粋な後中心型のスケーリング演算は、次の条件により可換である：

$$
c_1=c_2=0.
$$

演算が数値的に可換である場合でも、その構造的順序はグルーヴ記述の一部として保持される。

##### 境界での振る舞い

分割を持つ各出現要素には、次の境界規則を設定できる：

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

次の式が既約分数で表されている場合：

$$
N=\frac{L}{D}=\frac{p}{q},
$$

連続する分割は、次の条件で親要素と再び整列する：

$$
\boxed{
qL=pD.
}
$$

したがって：

$$
N\in\mathbb{N}
\quad\Rightarrow\quad
\text{単一の親出現要素内で閉じる},
$$

$$
N\in\mathbb{Q}_{>0}
\quad\Rightarrow\quad
\text{複数の出現要素にまたがって有限回で閉じる},
$$

$$
N\in
\mathbb{R}_{>0}\setminus\mathbb{Q}
\quad\Rightarrow\quad
\text{厳密には閉じない}.
$$

##### 時間的実現

正規化された値 $1$ は、抽象的な基準持続時間である。

$\tau>0$ を、その具体的な持続時間として指定する。次のように定義する：

$$
R_\tau(L,D,P)
=
(\tau L,\tau D,\tau P).
$$

アンカーを慣習的に四分音符の拍として解釈する場合、$\tau$ はその四分音符の
拍の持続時間である。

##### グルーヴ方程式の形式的定義

正規化されたグルーヴ方程式は次のとおりである：

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

その数値的実現は次のとおりである：

$$
\boxed{
\operatorname{GE}_\tau(\mathfrak{G})
=
\left(
R_\tau(T_v)
\right)_{v\in V}.
}
$$

ここで、各 $T_v$ はそのノードに至る一意な根付き経路に沿って評価され、
境界を越える継続方法は $\beta$ によって決定される。

数値的に同一の実現であっても、構造的に同一のグルーヴであるとは限らない：

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

したがって、グルーヴ方程式は次の要素から構成される：

$$
\boxed{
\text{グルーヴ木}
+
\text{型付きノード演算の割り当て}
+
\text{境界での振る舞い}
+
\text{数値的実現}.
}
$$

##### 例：Near the Cross

<div class="center-box"><iframe width="560" height="315" src="https://www.youtube.com/embed/JdhUcR_MbTw?si=UzrCtMxmUPJAqqwj" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></div>

関連するアンカー以外の出現要素を次のようにおく：

$$
V_{\text{Near the Cross}}\setminus\{a\}
=
\{h_1,h_2,m,b,s_1\}.
$$

それぞれの構造型は次のとおりである：

$$
\kappa(h_1)=\kappa(h_2)=H,
\qquad
\kappa(m)=M,
\qquad
\kappa(b)=B,
\qquad
\kappa(s_1)=S_1.
$$

ノード演算の割り当てを次のように定義する：

$$
\begin{aligned}
\Omega_{\text{Near the Cross}}(h_1)
&=
\widetilde O_{H;4,1,0},
\\
\Omega_{\text{Near the Cross}}(h_2)
&=
\widetilde O_{H;8,1,0},
\\
\Omega_{\text{Near the Cross}}(m)
&=
\widetilde O_{M;3,1,2},
\\
\Omega_{\text{Near the Cross}}(b)
&=
\widetilde O_{B;1,\frac13,2},
\\
\Omega_{\text{Near the Cross}}(s_1)
&=
\widetilde O_{S_1;1,\frac13,2}.
\end{aligned}
$$

これらの割り当てだけでは、5つすべての演算が1つの線形な演算列に属する
とは限らない。グルーヴ木が次の根付き経路を定める場合：

$$
\gamma
=
(a,h_1,h_2,m,b,s_1),
$$

この経路から次の演算列が導出される：

$$
\boxed{
\Omega_\gamma
=
\left(
\widetilde O_{H;4,1,0},\,
\widetilde O_{H;8,1,0},\,
\widetilde O_{M;3,1,2},\,
\widetilde O_{B;1,\frac13,2},\,
\widetilde O_{S_1;1,\frac13,2}
\right).
}
$$

$h_1$ と $h_2$ が連続する兄弟ノードである場合、その順序は
$h_1\prec h_2$ または $h_2\prec h_1$ として記録される。両者が代替関係に
ある場合、$\prec$ の下では比較不能である。いずれの場合も、両者は別々の
根付き経路上にあり、暗黙のうちに積として結合されることはない。経路から
導出された演算列は、選択された経路の評価順序だけを記録する。
