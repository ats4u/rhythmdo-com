#### 音韻規則レベル３=韻律レベル
 **サブディヴィジョンレベル = 3⁻³=1/27**

これは１ディヴィジョンに２７つのサブディヴィジョンを割り当てる数え方です。

```{.lilypond-file}
common-ly/shared/rhythmdo-countset-n-3.ly
```
これは一瞥では理解が難しいですが、次のような法則になっています。

- **1 & A & & A A & A**
- **2 & A & & A A & A**
- **3 & A & & A A & A**

これは一瞥では理解が難しいですが **1 & A** を先頭の文字を変えながら3回繰り返し
て読んでいるのです。それを数字だけで表現すると次のようになります。

- **1 2 3 2 2 3 3 2 3**
- **2 2 3 2 2 3 3 2 3**
- **3 2 3 2 2 3 3 2 3**

この時、1 を 1、2を&、3をa に割り当てて同じ様に読むと

- **1 & A & & A A & A**
- **2 & A & & A A & A**
- **3 & A & & A A & A**

になります。この様に数字を多層にして読む必要があるリズムをここでは**多次元グル
ーヴ**と呼びます。 詳しくは[多次元ディヴィジョン空間理論](/offbeat-count/multidimensional-rhythm/ja/)を参照して下さい。

---

次のグラフは、1拍を1テーブルとして表し、横書き（列を先に左から右に読み、行を次
に上から下に読む）で表したものです。

<style>
  :root {
    --border: #d0d7de;
    --bg-head: #f6f8fa;
  }
  .tables-wrap {
    display: flex;
    flex-wrap: wrap;       /* ✅ allows wrapping to next row */
    gap: 12px;             /* space between tables */
    align-items: flex-start;
    justify-content: flex-start;  /* ✅ left-aligned row */
  }
  .count-card {
    flex: 0 0 auto;        /* ✅ keep natural width; don’t stretch */
  }
  .tables-wrap table {
    border-collapse: collapse;
    font-family: system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
    font-size: 14px;
    line-height: 1.3;
    background: white;
  }
  .tables-wrap thead th {
    background: var(--bg-head);
    font-weight: 600;
  }
  .tables-wrap th,
  .tables-wrap td {
    border: 1px solid var(--border);
    padding: 4px 8px;
    text-align: left;  /* ✅ left-align cells */
    white-space: nowrap;
  }
  .count-card-panel {
    min-width:1.5em;
    min-height:1.5em;
    width:auto;
    height:auto;
    font-size:3em;
    text-align:center;
    border:1px silver solid;
  }
</style>

<div class="tables-wrap">
<!-- 1 -->

<table class="count-card">
  <tr><td>1</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

<!-- 2 -->
<table class="count-card">
  <tr><td>2</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

<!-- 3 -->
<table class="count-card">
  <tr><td>3</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

<!-- 4 -->
<table class="count-card">
  <tr><td>4</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

<!-- 5 -->
<table class="count-card">
  <tr><td>5</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

<!-- 6 -->
<table class="count-card">
  <tr><td>6</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

<!-- 7 -->
<table class="count-card">
  <tr><td>7</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

<!-- 8 -->
<table class="count-card">
  <tr><td>8</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

<!-- 9 -->
<table class="count-card">
  <tr><td>9</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

<!-- 1 (repeat) -->
<table class="count-card">
  <tr><td>1</td><td>&amp;</td><td>a</td></tr>
  <tr><td>&amp;</td><td>&amp;</td><td>a</td></tr>
  <tr><td>a</td><td>&amp;</td><td>a</td></tr>
</table>

</div>

---

これを数字だけで表すと次のようになります。

<div class="tables-wrap">
<!-- 1 -->

<table class="count-card">
  <tr><td>1</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

<!-- 2 -->
<table class="count-card">
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

<!-- 3 -->
<table class="count-card">
  <tr><td>3</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

<!-- 4 -->
<table class="count-card">
  <tr><td>4</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

<!-- 5 -->
<table class="count-card">
  <tr><td>5</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

<!-- 6 -->
<table class="count-card">
  <tr><td>6</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

<!-- 7 -->
<table class="count-card">
  <tr><td>7</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

<!-- 8 -->
<table class="count-card">
  <tr><td>8</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

<!-- 9 -->
<table class="count-card">
  <tr><td>9</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

<!-- 1 (repeat) -->
<table class="count-card">
  <tr><td>1</td><td>2</td><td>3</td></tr>
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>3</td><td>2</td><td>3</td></tr>
</table>

</div>

---

テーブルを読む順番は次の通りです。

<div class="tables-wrap">
<!-- 1 -->
<div class="count-card count-card-panel" > 1 </div>
<div class="count-card count-card-panel" > 2 </div>
<div class="count-card count-card-panel" > 3 </div>
<div class="count-card count-card-panel" > 4 </div>
<div class="count-card count-card-panel" > 5 </div>
<div class="count-card count-card-panel" > 6 </div>
<div class="count-card count-card-panel" > 7 </div>
<div class="count-card count-card-panel" > 8 </div>
<div class="count-card count-card-panel" > 9 </div>
</div>

---

それぞれのテーブル内の数字を読む順番は次の通りです。

<div class="tables-wrap">

<!-- 1 -->

<table class="count-card">
  <tr><td>1</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 2 -->

<table class="count-card">
  <tr><td>2</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 3 -->

<table class="count-card">
  <tr><td>3</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 4 -->

<table class="count-card">
  <tr><td>4</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 5 -->

<table class="count-card">
  <tr><td>5</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 6 -->

<table class="count-card">
  <tr><td>6</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 7 -->

<table class="count-card">
  <tr><td>7</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 8 -->

<table class="count-card">
  <tr><td>8</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 9 -->

<table class="count-card">
  <tr><td>9</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 9 -->

<table class="count-card">
  <tr><td>9</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

<!-- 1 (repeat) -->

<table class="count-card">
  <tr><td>1</td><td>2</td><td>3</td></tr>
  <tr><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td></tr>
</table>

</div>


