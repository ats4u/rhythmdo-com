### (非表示) 音韻規則を表す表記法(SPE)

音韻学で使われる発音規則を書き表す表記法に SPE表記法(SPE notation) というものがあります。

SPE表記法は音韻学の研究が立ち遅れている我が国日本では全く使われていません。[^spe3]

そこでここではSPE表記法を避け、漢語の訳語を当てて表現します。

| SPE表記法      | 日本語の呼び方         | 英語の呼び方                 | 説明                                          |
| -------------- | ---------------------- | ---------------------------- | --------------------------------------------- |
| `_`            | 規則適用位置           | **Site of Application**      | 規則が適用される位置（X _ Y） [^spe1]         |
| `#`            | 語界                   | **Word Boundary**            | 単語と単語の境界を表す                        |
| `C`            | 任意の子音             | **Consonant**                | 包括記号( **Cover Symbols** ) のひとつ[^spe2] |
| `V`            | 任意の母音             | **Vowel**                    | 包括記号( **Cover Symbols** ) のひとつ[^spe2] |
| `{ … }`       | 特定のセグメントの集合 | **Set of Specific Segments** | ※ 例：{t, d, n} の **segments**              |
| `[ … ]`       | 特徴束                 | **Feature Bundle**           | 例：`[+syllabic]`、`[-voice]`                 |
| `( … )`       | 省略可能               | **Optional**                 | 任意要素の括弧                                |
| `+`            | 形態素境界             | **Morpheme Boundary**        | 語内部                                        |
| `##`           | 発話境界               | **Utterance Boundary**       | 発話全体の端                                  |
| `V́`            | 強勢母音               | **Stressed  Vowel**          |                                               |
| `V̆`            | 無強勢母音             | **Unstressed Vowel**         |                                               |
| `N̩`            | 音節的子音             | **Syllabic Consonant**       |                                               |
| `O`            | 音節頭                 | **Onset**                    | `σ` **sigma**(後述)の構成要素のひとつ。      |
| `N`            | 音節核                 | **Nucleus**                  | `σ` **sigma**(後述)の構成要素のひとつ。      |
| `Co`           | 音節末                 | **Coda**                     | `σ` **sigma**(後述)の構成要素のひとつ。      |
| `σ` **sigma** | 音節                   | **Syllable**                 |                                               |
| `ω` **omega** | 韻律語                 | **Prosodic Word**            |                                               |
| `φ` **phi**   | 音韻句                 | **Phonological Phrase**      |                                               |
| `ι` **iota**  | イントネーション句     | **Intonational Phrase**      |                                               |
| `μ` **mu**    | モーラ                 | **Mora**                     | 日本語発音分析で必須                          |
| `∅`            | 空列（ゼロ音）         | **Null** / **Zero**          | 挿入・脱落規則に使う（例：`∅ → t / V _ V`）  |
| `α`（変数）   | アルファ変数           | **Alpha Notation**           | 同値特徴（例：C → [αvoice] / _ [αvoice]）  |
| `.`            | 音節境界               | **Syllable Boundary**        | 転写や環境に用いることがある                  |
| `R` / `ρ`     | ライム(核＋末)         | **Rime**                     | `R = N + Coda`                                |
| `Ft`           | フット                 | **Foot**                     | `σ`の上位単位                                |
| `U`            | 発話                   | **Utterance**                | `ι`の上位；`##`の実体                        |

:  {.tbl-pron2 .tbl-header-center tbl-colwidths=[1,1,1,1,1]}

- 🗣️ 1 `A → B / X _ Y` は「X と Y のあいだ（**between**）で A が B に変わる（**becomes**）」と読む。

[^spe1]: 挿入・脱落にも用いる。
[^spe2]: CとVは、CV用語の**タイミング・スロット (timing slots)**とは異なる概念。混同に注意。
[^spe3]: Some specialist generative-phonology works do use SPE-style rules, but this guide targets general readers.

