### What Is Multidimensionalization

```{python}
#| output: asis
from pathlib import Path
import sys
import os

## Go one directory up from the current working dir
# parent = Path.cwd().parent.parent
parent = os.getenv( "RHYTHMPRESS_ROOT" )

if str(parent) not in sys.path:
    sys.path.insert(0, str(parent))

## now imports from project root work

from lib.groovespace import *
```

The essence of rhythm as information lies in its multidimensional structure. Information with a multidimensional structure is unfolded onto the one-dimensional number line of time. The rhythm we hear in music is the multidimensional solid figure possessed by rhythm unfolded along the time axis of measures, beats, tuplets, and microtiming. In other words, rhythm can be said to be a one-dimensional projection of multidimensional information.

It is like folded layers of trees casting shadows onto the road surface.

<div class="ats4u-twitter-video" >https://x.com/ats4u/status/1754121576474440034?s=46</div>

Or like a large cloud layered in multiple strata, creating patterns of light and shadow on the ground.

<div class="ats4u-twitter-video" >https://x.com/ats4u/status/1754121950614655124?s=46</div>

When a figure that exists in a space of three or more dimensions is projected into three dimensions (a solid) or two dimensions, we can observe very mysterious kinds of motion. For example, the following figure is called a tesseract.

![](https://upload.wikimedia.org/wikipedia/commons/5/55/8-cell-simple.gif)

Something similar happens in rhythm as well. In other words, one could say that the key to groove is how many multidimensional interference patterns and geometric patterns can be created within musical rhythm.


Concretely speaking, it takes the form of increasing the number of digits step by step.

Suppose there is a four-beat rhythm like the following.

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

Suppose this rhythm repeats four times.

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

At this point, we can think of it as a two-dimensional figure projected into one dimension. The reason is that a pattern repeated four times can be regarded as the same as a square unfolded into one dimension as follows. We can see that by folding it vertically.

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

When we fold it vertically and rearrange it, we can see that it is a projection of a two-dimensional square onto a one-dimensional line.

Next, let us consider the case where this rhythm repeats four more times.


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

By arranging it vertically in this way, we can see that what was originally a cube has been rearranged into one dimension.

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
