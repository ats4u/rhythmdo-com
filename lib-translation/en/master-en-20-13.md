### (Hidden) SPE Notation for Representing Phonological Rules

There is a notation system called **SPE notation** that is used in phonology to express pronunciation rules.

In Japan, where phonological research has remained comparatively underdeveloped, SPE notation is almost never used.[^spe3]

So here, instead of depending on bare SPE notation alone, I pair it with explicit translated labels.

| SPE Notation | Japanese Label | Romaji (Hepburn) | English Label | Explanation |
| ------------ | -------------- | ---------------- | ------------- | ----------- |
| `_` | 規則適用位置 | Kisoku tekiyō ichi | **Site of Application** | Position where the rule applies (X _ Y). [^spe1] |
| `#` | 語界 | Gokai | **Word Boundary** | Marks the boundary between words. |
| `C` | 任意の子音 | Nin'i no shiin | **Consonant** | One of the **cover symbols**.[^spe2] |
| `V` | 任意の母音 | Nin'i no boin | **Vowel** | One of the **cover symbols**.[^spe2] |
| `{ ... }` | 特定のセグメントの集合 | Tokutei no segumento no shūgō | **Set of Specific Segments** | For example, the **segments** in {t, d, n}. |
| `[ ... ]` | 特徴束 | Tokuchō taba | **Feature Bundle** | For example, `[+syllabic]` or `[-voice]`. |
| `( ... )` | 省略可能 | Shōryaku kanō | **Optional** | Parentheses for optional elements. |
| `+` | 形態素境界 | Keitaiso kyōkai | **Morpheme Boundary** | Boundary inside a word. |
| `##` | 発話境界 | Hatsuwa kyōkai | **Utterance Boundary** | Boundary at the edge of an utterance. |
| `V́` | 強勢母音 | Kyōsei boin | **Stressed Vowel** | |
| `V̆` | 無強勢母音 | Mukyōsei boin | **Unstressed Vowel** | |
| `N̩` | 音節的子音 | Onsetsuteki shiin | **Syllabic Consonant** | |
| `O` | 音節頭 | Onsetsutō | **Onset** | One constituent of `σ` **sigma** (see below). |
| `N` | 音節核 | Onsetsu kaku | **Nucleus** | One constituent of `σ` **sigma** (see below). |
| `Co` | 音節末 | Onsetsumatsu | **Coda** | One constituent of `σ` **sigma** (see below). |
| `σ` **sigma** | 音節 | Onsetsu | **Syllable** | |
| `ω` **omega** | 韻律語 | Inritsugo | **Prosodic Word** | |
| `φ` **phi** | 音韻句 | On'in ku | **Phonological Phrase** | |
| `ι` **iota** | イントネーション句 | Intonēshon ku | **Intonational Phrase** | |
| `μ` **mu** | モーラ | Mōra | **Mora** | Essential in Japanese pronunciation analysis. |
| `∅` | 空列（ゼロ音） | Kūretsu (zero-on) | **Null** / **Zero** | Used in insertion and deletion rules, e.g. `∅ -> t / V _ V`. |
| `α` (variable) | アルファ変数 | Arufa hensū | **Alpha Notation** | Shared feature variable, e.g. `C -> [αvoice] / _ [αvoice]`. |
| `.` | 音節境界 | Onsetsu kyōkai | **Syllable Boundary** | Sometimes used in transcription or environment notation. |
| `R` / `ρ` | ライム(核＋末) | Raimu (kaku + matsu) | **Rime** | `R = N + Coda`. |
| `Ft` | フット | Futto | **Foot** | A unit above `σ`. |
| `U` | 発話 | Hatsuwa | **Utterance** | A unit above `ι`; the substance marked by `##`. |

:  {.tbl-pron2 .tbl-header-center tbl-colwidths=[1,1,1,1,1]}

- 🗣️ `A -> B / X _ Y` is read as: A **becomes** B **between** X and Y.

[^spe1]: Also used for insertion and deletion.
[^spe2]: Here, C and V are different from the **timing slots** of CV terminology. Do not confuse the two.
[^spe3]: Some specialist generative-phonology works do use SPE-style rules, but this guide targets general readers.
