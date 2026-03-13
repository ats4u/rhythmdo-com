#### サブディヴィジョンとは

サブディヴィジョンとは、声出しカウントを行う時に数字の間にいれるアルファベットと記号のことです。

```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            1 e & a 2 e & a 3 e & a 4 e & a
        """),
        split2d("""
            N0 b1 b1 b1 N0 b1 b1 b1 N0 b1 b1 b1 N0 b1 b1 b1
        """)
    )
)
```

サブディヴィジョンをカウントする時は数字ではなく、記号（＆）とアルファベットを使います。ここで使われる記号アルファベットは次の通りです。

* a ( アー )
* & ( アンド )
* e (イー)

ここではこのサブディヴィジョンを多次元化します。

##### サブディヴィジョンの多次元化する

サブディヴィジョンの多次元化は、これまで数字に対して行っていた多次元化を、記号アルファベットに対して行うことを言います。

次のようにサブディヴィジョンがあったとします。

```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            1 e & a
        """),
        split2d("""
            B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
        """)
    )
)
```

この通常のサブディヴィジョンはいわば一次元のサブディヴィジョンということができます。

##### 一次元サブディヴィジョンの多次元化

この 1 e & a を 4回繰り返して読み、更に先頭の記号アルファベットを 1 e & a の順番で入れ替えることにより、あたかも一次元に並んでいる記号アルファベットを、二次元化した上で再度一次元に投影展開するのと同じ処理を行うことが出来ます。

```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            1 e & a
            e e & a
            & e & a
            a e & a
        """),
        split2d("""
            B1 n0 n0 n0
            B1 n0 n0 n0
            B1 n0 n0 n0
            B1 n0 n0 n0
        """)
    )
)
```

横に並べると次の様になります。

```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            1 e & a e e & a & e & a a e & a
        """),
        split2d("""
            B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
        """)
    )
)
```

この様にサブディヴィジョンの記号アルファベットを多次元化することを**サブディヴィジョンの多次元化** と呼びます。

##### 多次元化したサブディヴィジョンをもう一度多次元化する

既に多次元化したサブディヴィジョンを更に多次元化することも可能です。 次の様に更にもう一次元増やすことで**三次元マクロディヴィジョン(Triple-Layered Macrodivision)** を構築できます。

```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            1 e & a e e & a & e & a a e & a
            e e & a e e & a & e & a a e & a
            & e & a e e & a & e & a a e & a
            a e & a e e & a & e & a a e & a
        """),
        split2d("""
            B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
            B2 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
            B3 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
            B4 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0 B1 n0 n0 n0
        """)
    )
)
```

この表を立体的に並べてみると次の様になります。

<div class="perspwrap" style="z-index:40"><div class="perspinner">
```{python}
#| output: asis
print(
    show_beat(
        split2d( """
            1 e & a
            e e & a
            & e & a
            a e & a
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
            e e & a
            e e & a
            & e & a
            a e & a
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
            & e & a
            e e & a
            & e & a
            a e & a
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
            a e & a
            e e & a
            & e & a
            a e & a
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

