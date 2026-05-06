#### What Is Subdivision

Subdivision means the letters and symbols inserted between the numbers when doing spoken count.

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

When counting subdivision, we use symbols (`&`) and letters rather than numbers. The symbols and letters used here are as follows.

* a (ah)
* & (and)
* e (ee)

Here we will multidimensionalize this subdivision.

##### Multidimensionalizing Subdivision

Multidimensionalizing subdivision means applying to symbols and letters the same multidimensionalization that was previously applied to numbers.

Suppose there is a subdivision as follows.

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

This ordinary subdivision can be regarded, so to speak, as one-dimensional subdivision.

##### Multidimensionalizing One-Dimensional Subdivision

By reading this `1 e & a` four times and then rotating the leading symbol/letter in the order `1 e & a`, we can perform the same process as if the symbols and letters arranged in one dimension were first made two-dimensional and then projected and unfolded back into one dimension.

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

If we arrange it horizontally, it becomes as follows.

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

Multidimensionalizing subdivision symbols and letters in this way is called **multidimensionalization of subdivision**.

##### Multidimensionalizing an Already Multidimensionalized Subdivision Once More

It is also possible to multidimensionalize an already multidimensionalized subdivision further. By adding yet one more dimension as follows, we can construct **three-dimensional subdivision**.

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

If we arrange this table in solid form, it becomes as follows.

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
