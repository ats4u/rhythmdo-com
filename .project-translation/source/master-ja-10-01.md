### 多次元化とは

```{python}
#| output: asis
from pathlib import Path
import sys
import os

## Go one directory up from the current working dir
# parent = Path.cwd().parent.parent
parent = os.getenv( "RHYTHMPRESS_ROOT" )

project_lib = Path(parent) / ".project-lib"

if str(project_lib) not in sys.path:
    sys.path.insert(0, str(project_lib))

## now imports from project-local library work

from groovespace import *
```

リズムという情報の本質は多次元構造にあります。多次元の構造を持った情報が時間軸という１次元数直線上に展開されたものといえます。 私達が聴いている音楽のリズムは、リズムが持つ多次元立体図形が小節・拍・連符そして、マイクロタイミングなどの時間軸 に展開されたものです。つまりリズムは多次元情報の１次元投影といえます。

それはあたかも、折り重なった木々が路面に影を落とす様子とにています。

<div class="ats4u-twitter-video" >https://x.com/ats4u/status/1754121576474440034?s=46</div>

あるいは、大きな雲が多層になって地表に光と影の模様を作り出す様子とにています。

<div class="ats4u-twitter-video" >https://x.com/ats4u/status/1754121950614655124?s=46</div>

私達が住んでいる３次元以上の次元数を持った空間での図形を３次元（立体）や２次元に投影すると、とても不思議な動きをする図形を見ることが出来ます。 例えば次の図形は超立体(テサラクト＝Tesseract)と呼ばれています。

![](https://upload.wikimedia.org/wikipedia/commons/5/55/8-cell-simple.gif)

リズムの上でもこれと似たような現象が起きています ─── 言い換えると、音楽のリズムの上にどれだけ多くの次元を持った干渉模様と幾何学模様を作り出すかが、グルーヴするための鍵とも言えます。


具体的に言うと、数字の桁を順番に増やしていくような形になっています。

次のような４拍のリズムがあったとします。

```{python}
#| output: asis
print(
    show_beat(
        [
            [ 1, 2, 3, 4 ]
        ],
        [
            [B1, N, N, N ]
        ]
    )
)
```

このリズムが４回続くとします。

```{python}
#| output: asis
print(
    show_beat(
        [
            [
                1, 2, 3, 4,
                2, 2, 3, 4,
                3, 2, 3, 4,
                4, 2, 3, 4,
            ]
        ],
        [
            [B1, N, N, N ]  * 4
        ]
    )
)
```

この時、２次元の図形を１次元に投影したものと考えることが出来ます。何故なら４回続くパターンは次のような正方形を１次元に展開したものと同じと考えられるからです。 そのことが縦に折り返してみることでわかります。

```{python}
#| output: asis
print(
    show_beat(
        [
            [ 1, 2, 3, 4, ],
            [ 2, 2, 3, 4, ],
            [ 3, 2, 3, 4, ],
            [ 4, 2, 3, 4, ],
        ],
        [
            [B1, N, N, N ],
            [B1, N, N, N ],
            [B1, N, N, N ],
            [B1, N, N, N ],
        ]
    )
)
```

縦に折り返して並べ替えると、二次元の図形である正方形を一次元の直線として投影したものだということがわかります。


次にこのリズムが更に４回続く場合を考えます。


```{python}
#| output: asis
print(
    show_beat(
        [
            [
                1, 2, 3, 4,
                2, 2, 3, 4,
                3, 2, 3, 4,
                4, 2, 3, 4,
            ],
            [
                2, 2, 3, 4,
                2, 2, 3, 4,
                3, 2, 3, 4,
                4, 2, 3, 4,
            ],
            [
                3, 2, 3, 4,
                2, 2, 3, 4,
                3, 2, 3, 4,
                4, 2, 3, 4,
            ],
            [
                4, 2, 3, 4,
                2, 2, 3, 4,
                3, 2, 3, 4,
                4, 2, 3, 4,
            ],
        ],
        [
            [B1, N, N, N  ] + [B1, N, N, N ] *3,
            [B2, N, N, N  ] + [B1, N, N, N ] *3,
            [B3, N, N, N  ] + [B1, N, N, N ] *3,
            [B4, N, N, N  ] + [B1, N, N, N ] *3,
        ]
    )
)
```

これは上下方向にに並べることでもともとは立方体だったものを１次元に並べ替えたものだったことがわかります。

<div class="perspwrap" style="z-index:40"><div class="perspinner">
```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            1 2 3 4
            2 2 3 4
            3 2 3 4
            4 2 3 4
        """),
        split2d("""
            B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
        """),
        [],
        "persptable divisions"
      )
    )
```
</div></div>

<div class="perspwrap" style="z-index:30"><div class="perspinner">
```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            2 2 3 4
            2 2 3 4
            3 2 3 4
            4 2 3 4
        """),
        split2d("""
            B2 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
        """),
        [],
        "persptable divisions"
      )
)
```
</div></div>

<div class="perspwrap" style="z-index:20"><div class="perspinner">
```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            3 2 3 4
            2 2 3 4
            3 2 3 4
            4 2 3 4
        """),
        split2d("""
            B3 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
        """),
        [],
        "persptable divisions"
    )
)
```
</div></div>

<div class="perspwrap" style="z-index:10"><div class="perspinner">
```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            4 2 3 4
            2 2 3 4
            3 2 3 4
            4 2 3 4
        """),
        split2d("""
            B4 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
        """),
        [],
        "persptable divisions"
    )
)
```
</div></div>
