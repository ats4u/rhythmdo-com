#### What Is Multidimensionalization

Multidimensionalization means increasing the number of **digits** used when counting, as in the following example. As in the previous chapter, when counting division (the beat count), if we count the measure number at the same time, it becomes as follows.

```{python}
#| output: asis
print(
    show_beat(
        [
            [ 1, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ]
        ],
        [
            [R1, N, N, N ] *4
        ]
    )
)
```

When counting beat numbers in a fixed cycle in this way, counting, at the first beat of that cycle, how many times the cycle has come around (that is, the measure count) is called **multidimensionalization**. Because of the historical development of Offbeat Count, it is also sometimes called **counting with measure numbers**.
