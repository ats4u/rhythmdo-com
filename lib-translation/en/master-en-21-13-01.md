#### Phonological Rule Level 1 = Phoneme Level <!-- {#ppns-1} -->

We will now apply Prosodic Notation Strictification to the count at phonological rule level 1. A count at phonological rule level 1 can undergo only the first three levels of Prosodic Notation Strictification. Below, we carry out the strictification through Level 2.

```{.lilypond-file}
common-ly/shared/rhythmdo-countset-n-1.ly
```

##### Level 0 {{<meta var.MiOP.en>}} <!-- {#ppns-1-0} -->

First, after decomposing the notes into phonemes, the notation method that simply assigns the phonemes in order from the beginning is this **Level 0 strictification**.

```{.lilypond-file}
common-ly/shared/rhythmdo-lv1-lv0-000.ly
```

Two interpretations are possible for this notation method.

1. an abstract zero strictification in which no strictification has been applied
2. a strictification applied with respect to {{<meta var.MiOP.en>}}

Level 0 does not perform any of the strictification carried out from Level 1 onward. For that reason, Level 0 can be regarded as an abstract **Zero {{<meta var.PNS.en>}}**. This is the first interpretation.

The second interpretation is to regard this Zero {{<meta var.PNS.en>}} as **a strictification carried out with respect to {{<meta var.MiOP.en>}}**.

When Japanese speakers, whose language has mora-timed rhythm, try to sing songs whose lyrics are written in stress-timed languages such as English, German, and Russian, or in syllable-timed languages such as Spanish, French, and Greek, the rhythm interpretation of Japanese mora-timed rhythm emerges and produces characteristic errors in rhythm interpretation. Level 0 strictification can be said to be **a notation of this mistaken Japanese rhythm interpretation**.

That characteristic Japanese error is that **{{<meta var.NI.en>}} is not observed**.

In foreign languages, that is, syllable-timed and stress-timed languages, there is an implicit rule by which the vowels that appear in each syllable are placed at the beginnings of beats so that the intervals between vowels remain constant. This is called **{{<meta var.NI.en>}}**.

Furthermore, because foreign languages have consonant clusters and consonant connections, consonants far longer than those in Japanese appear. To preserve the isochrony of vowel beats even when such long consonants appear, those consonants must already have been finished before the vowel.

For that reason, it becomes necessary to place the beat on the vowel and pronounce the consonant before the vowel as a **weak beat**. This could also be rephrased as the origin of weak beats.

Japanese (mora-timed rhythm), however, has isochrony in the cells themselves that contain consonant-vowel units. This is called **{{<meta var.MI.en>}}**. In **{{<meta var.MI.en>}}**, the cell itself contains the consonant. For that reason, unlike foreign languages, Japanese tends to pronounce consonants after the beat.

This becomes an even more conspicuous problem when the mora beat contains no consonant. In that case, as shown in the following score, the consonant advances.

```{.lilypond-file}
common-ly/shared/rhythmdo-lv1-lv0-001.ly
```

This score schematically represents the state in which the **Head Alignment** rhythm recognition type of mora-timed rhythm is activated. Please pay attention to the **Eight (8)** portion. Two problems occur here. First, speakers of mora-timed languages such as Japanese cannot perceive the **implicitly pronounced consonant, namely the glottal stop**, that English speakers use in words beginning with vowels, so deletion occurs.

Second, when that deletion occurs, the vowel that had originally been placed at the center of the mora beat is pronounced without waiting for the deleted consonant position. As a result, the vowel position appears to move forward. This is called **{{<meta var.NA.en>}}**.

This property, in which all phonemes align at the beginning of the mora beat, is called **{{<meta var.HAP.en>}}**.

**{{<meta var.HAP.en>}}** can be said to be the most fundamental reason Japanese speakers do not groove. Because the position of the vowel, which is the onset of pitch, changes, the pronunciation position of sounds no longer remains constant, and the groove condition that "sounds are performed at constant intervals" is no longer satisfied.

This is why Japanese speakers do not groove. The equal spacing of **{{<meta var.MI.en>}}** in the perception of Japanese speakers is not equal spacing when viewed from the perspective of sound onsets. That is the real reason Japanese speakers do not groove.

**Difference in Faithfulness to the Score**

This Level 0, **Zero {{<meta var.PNS.en>}}**, often appears as the result of Japanese speakers preserving faithfulness to the written score to the greatest possible extent. The kind of faithfulness to the score that is maintained without knowing the existence of the rules that speakers of syllable-timed and stress-timed languages observe as implicit understandings even when they are not written in the score is, it is no exaggeration to say, an act of destruction toward music.

As Japanese speakers, it is impossible to overemphasize the importance of being humble about pronunciation differences, taking an interest in those differences, studying phonology carefully, and learning the score interpretations commonly used overseas.

The levels from Level 1 onward are a formalization of one example of such score interpretation. These levels exist in order to realize smooth pronunciation that can carry your aspiration to people all over the world.

##### Level 1 {{<meta var.NI.en>}} <!-- {#ppns-1-1} -->

The first problem faced by speakers whose native language is mora-timed rhythm is that, because they do not possess the {{<meta var.NI.en>}} rhythm recognition type, they cannot pronounce consonants before the strong beat.

To solve this problem, a dedicated practice method is needed. The following score schematically represents the state in which the {{<meta var.NI.en>}} rhythm recognition type of syllable-timed rhythm is activated.

```{.lilypond-file}
common-ly/shared/rhythmdo-lv1-lv1-000.ly
```

In this way, speakers of syllable-timed languages have the habit of pronouncing consonants in weak-beat positions.

##### Level 2 {{<meta var.MOP.en>}} <!-- {#ppns-1-2} -->

Syllable-timed languages also possess the {{<meta var.MOP.en>}} rhythm recognition type. They not only pronounce consonants in weak-beat positions, but also have the habit of bundling as many immediately preceding final consonants as possible into the next onset consonant.

The following score schematically shows how, in syllable-timed languages, final consonants are bundled into onset consonants and pronounced.

```{.lilypond-file}
common-ly/shared/rhythmdo-lv1-lv2-tuplets-1.ly
```

**Zoomed View**

```{.lilypond-file}
common-ly/shared/rhythmdo-lv1-lv2-tuplets-2.ly
```

At **Phonological Rule Level 1, phoneme level = 3⁻¹=1/3**, Prosodic Notation Strictification is possible only through Level 2. Any further strictification must be performed on counts at phonological rule level 2 or above.
