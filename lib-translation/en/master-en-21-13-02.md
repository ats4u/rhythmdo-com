#### Phonological Rule Level 2 = Syllable Level <!-- {#ppns-2} -->

From Level 3 {{<meta var.PNS.en>}} onward, we carry out syllable-level Prosodic Notation Strictification in addition to the phoneme-only strictification of phonological rule level 1 that we have used so far.

A count at phonological rule level 1 can undergo Prosodic Notation Strictification only through Level 2. To strictify not only phonemes but also syllables, it is necessary to use a level-2 count in which the hierarchy of the weak-beat anchoring axis is increased by one layer. From PNS Level 3 onward, we move to a count at phonological rule level 2 and carry out strictification at Levels 3 and 4.

The basic idea of Prosodic Notation Strictification at phonological rule level 2 is as follows.

Let us look at the count pattern at phonological rule level 2.

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3-000.ly
```

To this two-layer count, we apply **Level 3 {{<meta var.PNI.en>}}**, which is the original purpose of Level 3 strictification. Concretely, by **shifting the notes by one so that & comes onto the strong beat**, we place it in a **weak-beat-precedence** arrangement.

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3-001.ly
```

With this, **Level 3 {{<meta var.PNI.en>}}** is complete. At the same time, it is necessary to apply the Level 1 {{<meta var.NI.en>}} and Level 2 {{<meta var.MOP.en>}} parts of strictification that we have been carrying out up to this point.


From the next section onward, we apply Level 1 and Level 2 {{<meta var.PNS.en>}} to this two-layer count.


##### Level 0 {{<meta var.MiOP.en>}} <!-- {#ppns-2-0} -->
For details, see [Level 0](#ppns-1-0).

```{.lilypond-file}
common-ly/shared/rhythmdo-2-lv2-lv0-000.ly
```
<!-- XVxETWgLnwCBjn4sfZX86g== -->

<!--
```{.lilypond}
% \include "common-ly/shared/rhythmdo-lv3-lv0.ly"
% bx/+Uzn54FezLD2lCPTzPQ==
```
-->

##### Level 1 {{<meta var.NI.en>}} <!-- {#ppns-2-1} -->
For details, see [Level 1](#ppns-1-1).

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv1.ly
```

##### Level 2 {{<meta var.MOP.en>}} <!-- {#ppns-2-2} -->

To realize Level 2 {{<meta var.MOP.en>}}, the final consonants that had previously been pronounced on the second triplet are gathered into the onset consonant of the next syllable, that is, the third triplet at the second layer. Here I call this **onset-maximization processing**.

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv2.ly
```
<!-- DjP07omgzmg47kjmALzX/w== -->

##### Level 3 {{<meta var.PNI.en>}} <!-- {#ppns-2-3} -->

To realize Level 3 {{<meta var.PNI.en>}}, as explained at the beginning of this chapter, we shift the entire pattern so that the numbers, which had previously been placed at the beginnings of beats, now come on the third triplet of the first layer of the previous beat. As a result, & is positioned at the beginning of the beat.


```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3.ly
```

This looks complicated when viewed as notation, but as explained at the beginning of this chapter, if we remove the Level 1 and Level 2 strictification, it is simply shifted one first-layer triplet to the left.

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3-001.ly
```

##### Level 4 {{<meta var.MPOP.en>}} <!-- {#ppns-2-4} -->

Level 4 pushes weak-beat precedence one stage further.

At Level 3, we advanced the count by adding an offset in order to realize weak-beat precedence.

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3-001.ly
```

In that shifted state, by reading a first, we carry out double weak-beat precedence (Maximal Prosodic Onset).

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv4-000.ly
```

If we apply Level 1 and Level 2 strictification in this state, the result is as follows.

---

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv4.ly
```

---

This is as far as Prosodic Notation Strictification can go at phonological rule level 2.

