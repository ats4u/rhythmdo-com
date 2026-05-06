#### What Is Division

Up to now, when counting beats, we have repeated the measure as **1 2 3 4, 1 2 3 4** while counting the number of beats within each measure. The numbers produced by dividing the measure in this way are called **division**.

The following table shows an example of division.

```{python}
#| output: asis
print(
    show_beat(
        [
            [ 1, 2, 3, 4 ] *4
        ],
        [
            [B1, N, N, N ] *4
        ]
    )
)
```
