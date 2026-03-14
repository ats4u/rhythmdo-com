#### How to Name Multidimensionalized Subdivisions

##### One-Dimensional Subdivision = First Dimension

The following way of counting is called **one-dimensional subdivision**.
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

##### Two-Dimensional Subdivision = Second Dimension

The following way of counting is called **two-dimensional subdivision**.

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

##### Three-Dimensional Subdivision = Third Dimension

The following way of counting is called **three-dimensional subdivision**.


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
