#### Phonological Rule Level 3 = Prosodic Level
 **Subdivision Level = 3⁻³=1/27**

This is a way of counting that assigns twenty-seven subdivisions to one division.

```{.lilypond-file}
common-ly/shared/rhythmdo-countset-n-3.ly
```
This is difficult to understand at a glance, but it follows the pattern below.

- **1 & A & & A A & A**
- **2 & A & & A A & A**
- **3 & A & & A A & A**

This is hard to grasp at first glance, but it is simply **1 & A** repeated three times while changing the first character. If we express it using numbers only, it becomes as follows.

- **1 2 3 2 2 3 3 2 3**
- **2 2 3 2 2 3 3 2 3**
- **3 2 3 2 2 3 3 2 3**

At this point, if we assign 1 to 1, 2 to &, and 3 to a, and read it in the same way, it becomes:

- **1 & A & & A A & A**
- **2 & A & & A A & A**
- **3 & A & & A A & A**

Rhythms that require numbers to be read in multiple layers like this are called **multidimensional groove** here. For details, see [Multidimensional Division Spaces](/offbeat-count/multidimensional-division-spaces/en/).

---

The following diagram represents one beat as one table, arranged horizontally.

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

Expressed using numbers only, it becomes as follows.

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

The tables are read in the following order.

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

The numbers inside each table are read in the following order.

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
