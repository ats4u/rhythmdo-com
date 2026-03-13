#### What Is Macrodivision

I will explain macrodivision.

##### Multidimensionalizing Division

Here, let us consider multidimensionalizing division itself. The following figure is exactly the same division figure we saw in the previous chapter.

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

When this division is multidimensionalized, it becomes the following figure. This too is exactly the same figure we saw in the previous chapter.

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

This kind of multidimensionalized division is called **macrodivision**.

##### Multidimensionalizing Macrodivision

In this way, when we are counting with measure numbers, if we add one more dimension to count a group of measures of a certain size, it becomes as follows.

```{python}
#| output: asis
print(
    show_beat(
        [
            [ 1, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
        ],
        [
            [R1, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
        ]
    )
)
```

Counting in this way is called **multidimensionalization of macrodivision**. A macrodivision that has been multidimensionalized in this way is also called **two-dimensional macrodivision**.

##### Multidimensionalizing an Already Multidimensionalized Macrodivision Once More

It is also possible to multidimensionalize an already multidimensionalized macrodivision further. By adding yet one more dimension as follows, we can construct **three-dimensional macrodivision**.

```{python}
#| output: asis
print(
    show_beat(
        [
            [ 1, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
        ],
        [
            [G1, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
            [G2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
            [G3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
            [G4, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
        ],
        [
            N,
            N,
            N,
            N,
            ROW1,
            N,
            N,
            N,
            ROW1,
            N,
            N,
            N,
            ROW1,
            N,
            N,
            N,
        ]
    )
)
```

##### How to Name Multidimensionalized Macrodivisions

I will explain how to name the dimensions of multidimensionalized macrodivision.

###### One-Dimensional Macrodivision = First Dimension
The following way of counting is called **one-dimensional macrodivision**.

```{python}
#| output: asis
print(
    show_beat(
        [
            [ 1, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 1, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 1, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 1, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
        ],
        [
            [B1, N, N, N ] + [ B1, N, N, N ] * 3,
            [B1, N, N, N ] + [ B1, N, N, N ] * 3,
            [B1, N, N, N ] + [ B1, N, N, N ] * 3,
            [B1, N, N, N ] + [ B1, N, N, N ] * 3,
        ]
    )
)
```
And here, this dimension is called the **first dimension**.

###### Two-Dimensional Macrodivision = Second Dimension
The following way of counting is called **two-dimensional macrodivision**.

```{python}
#| output: asis
print(
    show_beat(
        [
            [ 1, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
        ],
        [
            [R1, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
        ]
    )
)
```
And here, this dimension is called the **second dimension**.

###### Three-Dimensional Macrodivision = Third Dimension
The following way of counting is called **three-dimensional macrodivision**.

```{python}
#| output: asis
print(
    show_beat(
        [
            [ 1, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 2, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 3, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
            [ 4, 2, 3, 4, 2, 2, 3, 4, 3, 2, 3, 4, 4, 2, 3, 4 ],
        ],
        [
            [G1, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
            [G2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
            [G3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
            [G4, N, N, N ] + [ B1, N, N, N ] * 3,
            [R2, N, N, N ] + [ B1, N, N, N ] * 3,
            [R3, N, N, N ] + [ B1, N, N, N ] * 3,
            [R4, N, N, N ] + [ B1, N, N, N ] * 3,
        ],
        [
            N,
            N,
            N,
            N,
            ROW1,
            N,
            N,
            N,
            ROW1,
            N,
            N,
            N,
            ROW1,
            N,
            N,
            N,
        ]
    )
)
```

This third dimension is called the **third dimension**.
