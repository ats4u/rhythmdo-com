#### 多次元化したサブディヴィジョンの呼び方

##### 一次元サブディヴィジョン＝第一次元

次の様に数えることを**一次元サブディヴィジョン(One-Dimensional Subdivision)**と呼びます。
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

##### 二次元サブディヴィジョン＝第二次元

次の様に数えることを**二次元サブディヴィジョン(Two-Dimensional Subdivision)**と呼びます。

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

##### 三次元サブディヴィジョン＝第三次元

次の様に数えることを**三次元サブディヴィジョン(Three-Dimensional Subdivision)**と呼びます。


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

