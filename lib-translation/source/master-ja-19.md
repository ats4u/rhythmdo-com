## {{<meta var.MORA_SPEAKERS.en>}}の為のエチュード <!-- {#etudes-for-speakers-of-mora-timed-languages} -->

この章では、岡敦が経験的に効果があることに気付いた音韻学に基づいた訓練方法を説明致します。

### モーラ拍リズムから見たストレス拍リズム

次のビデオは２０１０年ごろに米国ヒップホップシーンで流行したヒット曲 Swag Surfin' です。この曲はアフリカ系アメリカ人発音≒米国南部方言を色濃く反映した音楽です。 この曲をモーラ拍リズム言語話者が聴くと、全ての音節をひとつずれた形で認識してしまい正しい英語の発音として聴き取れないという現象がおこります。

この曲ではシラブル拍の{{<meta var.MOP.en>}}、及びストレス拍リズムの{{<meta var.MPOP.en>}}によって、全ての単語のリズム配置が弱拍が先になるように配置されています。 しかし{{<meta var.MiOP.en>}}をもつモーラ拍言語話者は、この弱拍先行が理解できずに強拍先行として認識する為、全ての音節を半分ずれて解釈してしまうという現象が起こります。


<iframe class="rhythmpedia-iframe" src="https://www.youtube.com/embed/7iTsbnr8e_8?si=uR5wPuBM63tA8ldU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<iframe class="rhythmpedia-iframe" src="https://www.youtube.com/embed/gM8TdGIf8Uk?si=Shy9bTB_4kvCkjyz" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

### ストレス拍リズム発音のモーラ拍リズムでの解釈

この音楽の歌詞の最初の部分をモーラ拍リズムで解釈すると『メナガテｯｽウェーッグ』と言っている様に聴こえます。これはストレス拍リズムでは『 man, I got that swag 』と解釈されます。この解釈の違いを図として表すと次の様になります。

![](/offbeat-count/attachments/phonetics-man-i-got-that-swag.png)

ここで起こっている相違の対応表を作ると次の様になります。

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
        <th colspan="1">英語の音節解釈</th>
        <td colspan="3">音節</td>
        <td colspan="3">音節</td>
        <td colspan="3">音節</td>
        <td colspan="3">音節</td>
      </tr>
      <tr>
        <th colspan="1">英語の発音</th>

        <td colspan="1">子音</td>
        <td colspan="1">母音</td>
        <td colspan="1">子音</td>

        <td colspan="1">子音</td>
        <td colspan="1">母音</td>
        <td colspan="1">子音</td>

        <td colspan="1">子音</td>
        <td colspan="1">母音</td>
        <td colspan="1">子音</td>

        <td colspan="1">子音</td>
        <td colspan="1">母音</td>
        <td colspan="1">子音</td>
      </tr>
      <tr>
        <th colspan="1">日本語の発音解釈</th>
        <td colspan="1">子音</td>
        <td colspan="1">母音</td>
        <td colspan="2">子音</td>
        <td colspan="1">母音</td>
        <td colspan="2">子音</td>
        <td colspan="1">母音</td>
        <td colspan="2">子音</td>
        <td colspan="1">母音</td>
        <td colspan="1">-</td>
      </tr>
        <tr>
        <th>日本語で解釈された音節</th>
        <td colspan="2">音節</td>
        <td colspan="3">音節</td>
        <td colspan="3">音節</td>
        <td colspan="3">音節</td>
        <td colspan="1">-</td>
      </tr>
    </tbody>
</table>

この様にモーラ拍リズムに末子音がないことにより、次の音節の頭子音との混同が起こり、ストレス拍リズムから見ると、モーラ拍リズムの解釈は１音節当たり 1/3 ずれた形で音声を認識していることがわかります。

### 末子音のないモーラ拍の末子音矯正法

モーラ拍リズム言語話者がストレス拍リズム言語を聴き取るために必要なことは、末子音を適切に区別してこの 1/3 のずれが起こらない様に矯正することです。つまり各シラブルの末子音を分離する練習をすることが有効だと考えられます。 それは日本語のそれぞれのモーラ拍の発音上を３つに分割し、モーラ拍の中に潜む末子音の存在をはっきり意識して次の音節の頭子音と結びついていることを意識する練習です。

例）七夕花火にカンパーイ『タナバタ・ハナビニ・カンパーイ』

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

ここで起こったていることを具体的に説明すると次のようになります。タナバタをローマ字で表すと TA NA BA TA になります。ここで各文字の母音とその次の文字の子音を繋げると TAN/NAB/BAT/TAH になります。つまり「ターン」「ナーブ」「バート」「ター」です。 この様にして各モーラ拍を３分割し末子音を分離していく作業を行います。このようにすることでストレス拍/シラブル拍リズムに必要な末子音認識に対して慣れる訓練を行います。

次のモーラの頭子音をスムーズに発音する為に、当該モーラの後端部分に暗黙の末子音が表れます。この無意識化で作っている暗黙の末子音をはっきり意識することが重要なポイントです。英語では次に現れる頭子音によって末子音が変化することはありません。しかし日本語では意識していない為に変化します。この違いに慣れることが重要といえます。

なお上記例では「ターハ」になっている最後の文字が「ター」になってしまいましたが、これは上記例のタナバタの次はハナビとハから始まっているのに、タナバタのみの場合は後続の文字がないためターのみになってしまったことによるものです。

別の例を見てみます。

例）かささぎの わたせる橋におく霜の 白きを見れば夜ぞふけにける

『カササギノ・ワタセルハシニ・オクシモノ・シロキヲミレバ・ヨルゾフケニケル』

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




