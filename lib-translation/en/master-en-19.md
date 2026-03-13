## Etudes for {{<meta var.MORA_SPEAKERS.en>}} <!-- {#etudes-for-speakers-of-mora-timed-languages} -->

This chapter explains phonology-based training methods that Ats Oka has empirically found effective.

### Stress-Timed Rhythm from the Perspective of Mora-Timed Rhythm

The following video is the hit song Swag Surfin', which became popular in the U.S. hip-hop scene around 2010. This song strongly reflects African American pronunciation, that is, roughly a Southern U.S. dialect. When speakers of mora-timed languages listen to this song, a phenomenon occurs in which they perceive all of the syllables as shifted by one position and therefore cannot hear them as correct English pronunciation.

In this song, the rhythmical placement of every word is arranged so that the weak beat comes first, through syllable-timed {{<meta var.MOP.en>}} and stress-timed-rhythm {{<meta var.MPOP.en>}}. However, speakers of mora-timed languages who have {{<meta var.MiOP.en>}} cannot understand this weak-beat precedence and instead perceive it as strong-beat precedence, so a phenomenon occurs in which they interpret all of the syllables as shifted by half a syllable.


<iframe class="rhythmpedia-iframe" src="https://www.youtube.com/embed/7iTsbnr8e_8?si=uR5wPuBM63tA8ldU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<iframe class="rhythmpedia-iframe" src="https://www.youtube.com/embed/gM8TdGIf8Uk?si=Shy9bTB_4kvCkjyz" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

### Interpreting Stress-Timed-Rhythm Pronunciation through Mora-Timed Rhythm

If the opening part of this song's lyrics is interpreted through mora-timed rhythm, it sounds as though it is saying "メナガテｯｽウェーッグ". In stress-timed rhythm, however, it is interpreted as `man, I got that swag`. The difference in interpretation can be shown as follows.

![](/offbeat-count/attachments/phonetics-man-i-got-that-swag.png)

The correspondence table for the mismatch that occurs here is as follows.

<style>

  /* 1) Let tables scroll horizontally instead of breaking layout */
  .quarto-container table.table {
    display: block;          /* enables overflow on the element itself */
    width :100%;
    max-width: 100%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
    scrollbar-gutter: stable both-edges;
  }

  table.pron {
    width:100%;
    height:auto;
  }
  .pron :is( th, td ) {
    font-size: 0.8em;
    min-height:40px;
    margin : 10px;
    padding : 1px;
    text-align : center;
    vertical-align: center;
    white-space:nowrap;
  }

  body.quarto-light table.pron {
    background-color : auto;
  }
  body.quarto-dark table.pron {
    background-color : auto;
  }
  body.quarto-light .pron :is( th, td ) {
    border: solid 1px black;
    background-color:auto;
  }
  body.quarto-dark .pron :is( th, td ) {
    border: solid 1px lightgreen;
    background-color:auto;
  }
  body.quarto-light .pron th  {
    background-color: yellow;
  }
  body.quarto-dark  .pron th  {
    background-color: #330;
  }

  body.quarto-dark .tbl-colored-row-header th {
    background-color: #333;
  }
  body.quarto-light .tbl-colored-row-header th {
    background-color: #eee;
  }
  body.quarto-dark .tbl-colored-column-header td:nth-child(1){
    background-color: #333;
    border: 1px solid #555;
  }
  body.quarto-light .tbl-colored-column-header td:nth-child(1) {
    background-color: #eee;
    border: 1px solid black;
  }

  .tbl-second-column-wrapping td:nth-child(2) {
    white-space:wrap;
  }
  .tbl-third-column-wrapping td:nth-child(3) {
    white-space:wrap;
  }
  .tbl-forth-column-wrapping td:nth-child(4) {
    white-space:wrap;
  }
  .tbl-rotate-90 th {
      position:relative;
      transform: rotate(90deg);
      transform-origin: left top; /* adjust pivot */
      white-space: nowrap;        /* prevent wrapping */
      left:2.5em;
      padding: 5px;               /* adjust as needed */
      vertical-align: center;     /* keeps aligned with column */
      text-align: center;         /* tweak to suit */
      height: 10em;               /* give extra room for rotated text */
  }
  .tbl-japanese-rotate-90 th {
      text-align: left;           /* tweak to suit */
      vertical-align: middle;     /* keeps aligned with column */
      writing-mode: vertical-rl;
      text-orientation: upright;  /* or 'mixed' */
      white-space: nowrap;        /* prevent wrapping */
  }
  .tbl-freeze-column-header th {
    position: sticky;
    top: 0px;
    z-index: 2;
  }

  .tbl-freeze-row-header td:nth-child(1)  {
    position: sticky;
    left : 0px;
    z-index: 2;
  }
  .tbl-body-center td {
    text-align : center !important;
  }

  .tbl-header-center th {
    text-align : center !important;
  }
  .tbl-spacy :is( th, td ) {
    padding : 0.2em 1.0em 0.2em 1.0em !important;
  }
  .ipa {
    font-family:"Charis SIL", serif !important;
    font-weight: 1000 !important;
    font-style: italic !important;
  }
  .tbl-pron2 :is( th, td ) {
    font-size: 0.8em;
    min-height:40px;
    margin : 2px;
    padding : 5px;
    vertical-align: center;
    white-space:nowrap;
  }
  body.quarto-light .tbl-pron2 :is( th, td ) {
    border: solid 1px black;
    background-color:auto;
  }
  body.quarto-dark .tbl-pron2 :is( th, td ) {
    border: solid 1px lightgreen;
    background-color:auto;
  }

/*
  table.pron3 {
    table-layout: fixed; /* prevents auto expansion */
  }
*/
  .pron3 :is( th, td ) {
    font-size: 0.8em;
    min-height:40px;
    margin : 10px;
    padding : 1px;
    vertical-align: center;
    white-space:nowrap;
  }
  table.pron3 thead :is( td, th ) {
  }
  table.pron3 tbody :is( td ) {
  }

</style>
<table class="pron">
    <tbody>
      <tr>
        <th colspan="1">English Syllable Interpretation</th>
        <td colspan="3">Syllable</td>
        <td colspan="3">Syllable</td>
        <td colspan="3">Syllable</td>
        <td colspan="3">Syllable</td>
      </tr>
      <tr>
        <th colspan="1">English Pronunciation</th>

        <td colspan="1">Consonant</td>
        <td colspan="1">Vowel</td>
        <td colspan="1">Consonant</td>

        <td colspan="1">Consonant</td>
        <td colspan="1">Vowel</td>
        <td colspan="1">Consonant</td>

        <td colspan="1">Consonant</td>
        <td colspan="1">Vowel</td>
        <td colspan="1">Consonant</td>

        <td colspan="1">Consonant</td>
        <td colspan="1">Vowel</td>
        <td colspan="1">Consonant</td>
      </tr>
      <tr>
        <th colspan="1">Japanese Pronunciation Interpretation</th>
        <td colspan="1">Consonant</td>
        <td colspan="1">Vowel</td>
        <td colspan="2">Consonant</td>
        <td colspan="1">Vowel</td>
        <td colspan="2">Consonant</td>
        <td colspan="1">Vowel</td>
        <td colspan="2">Consonant</td>
        <td colspan="1">Vowel</td>
        <td colspan="1">-</td>
      </tr>
        <tr>
        <th>Syllables Interpreted in Japanese</th>
        <td colspan="2">Syllable</td>
        <td colspan="3">Syllable</td>
        <td colspan="3">Syllable</td>
        <td colspan="3">Syllable</td>
        <td colspan="1">-</td>
      </tr>
    </tbody>
</table>

In this way, because mora-timed rhythm has no final consonants, confusion arises with the onset consonant of the next syllable. From the viewpoint of stress-timed rhythm, we can see that mora-timed interpretation recognizes speech in a form shifted by one third of a syllable per syllable.

### A Method for Training Final Consonants in Mora Beats That Lack Them

What speakers of mora-timed languages need in order to hear stress-timed languages is to distinguish final consonants properly and correct their perception so that this one-third shift does not occur. In other words, it is effective to practice separating the final consonant of each syllable. This means dividing the pronunciation of each Japanese mora into three parts and practicing being clearly aware of the hidden final consonant inside the mora and its connection to the onset consonant of the next syllable.

Example: 七夕花火にカンパーイ

`タナバタ・ハナビニ・カンパーイ`

↓↓↓

- ターン
- ナーブ
- バート
- ターハ
- ナーブ
- イーン
- イーク
- アーン
- パーイ

To explain concretely what is happening here, if Tanabata is written in Roman letters it becomes `TA NA BA TA`. If each vowel is linked to the consonant of the next letter, it becomes `TAN/NAB/BAT/TAH`. In other words, "ターン", "ナーブ", "バート", and "ター". In this way, each mora is divided into three parts and the final consonant is isolated. Doing this serves as training to get used to the recognition of final consonants required for stress-timed and syllable-timed rhythm.

In order to pronounce the onset consonant of the next mora smoothly, an implicit final consonant appears at the back end of the mora in question. The important point is to become clearly aware of this unconsciously produced implicit final consonant. In English, the following onset consonant does not cause the final consonant to change. In Japanese, however, it changes because speakers are not conscious of it. Getting used to this difference is important.

In the example above, the final item that became "ターハ" turns into "ター" because in the full phrase above Tanabata is followed by Hanabi, which begins with Ha, whereas when Tanabata appears alone there is no following character, so it ends as just "ター".

Let us look at another example.

Example: かささぎの わたせる橋におく霜の 白きを見れば夜ぞふけにける

`カササギノ・ワタセルハシニ・オクシモノ・シロキヲミレバ・ヨルゾフケニケル`

↓↓↓

- カース
- サース
- サーグ
- ギーン
- ノーウ
- ワーッﾄ
- タース
- セール
- ルーフ
- ハース
- シーン
- イーオ
- オーク
- クース
- シーム
