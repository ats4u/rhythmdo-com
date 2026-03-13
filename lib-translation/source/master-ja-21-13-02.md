#### 音韻規則レベル２=音節レベル <!-- {#ppns-2} -->

レベル3 {{<meta var.PNS.en>}} からはこれまでの音韻規則レベル1=音素のみの厳密化だけでなく音節レベルでの音韻表記厳密化を行います。

音韻規則レベル1のカウントでは音韻表記厳密化レベル2までの音韻表記厳密化しか行うことが出来ません。音素だけでなく音節に対する厳密化を行うために弱拍基軸の階層を１つ増やした音韻レベル2のカウントを利用する必要があります。音韻表記厳密化レベル3からは音韻規則レベル2のカウントに移行した上で音韻表記厳密化レベル3及び4の音韻厳密化を行います。

音韻規則レベル2での音韻表記厳密化の基本的な考え方は次の通りです。

音韻規則レベル2のカウントパターンを見てみます。

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3-000.ly
```

二層カウントに対してレベル3の本来の目的である音韻表記厳密化**レベル３{{<meta var.PNI.en>}}**を適用します。具体的には**音符を１つずらし&が強拍に来る様に配置**する事で**弱拍先行**の配置にします。

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3-001.ly
```

これで**レベル3 {{<meta var.PNI.en>}}** が完了しました。これと同時に、これまでに行ってきたレベル1 {{<meta var.NI.en>}}とレベル2 {{<meta var.MOP.en>}} の {{<meta var.PNI.en>}} を行う必要があります。


次節からこの２階層カウントに対してレベル1とレベル2を{{<meta var.PNS.en>}}を行います。


##### レベル0 {{<meta var.MiOP.en>}} <!-- {#ppns-2-0} -->
詳細の説明は[レベル0](#ppns-1-0)に譲ります。

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

##### レベル1 {{<meta var.NI.en>}}    <!-- {#ppns-2-1} -->
詳細の説明は[レベル1](#ppns-1-1)に譲ります。

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv1.ly
```

##### レベル2 {{<meta var.MOP.en>}}    <!-- {#ppns-2-2} -->

レベル2{{<meta var.MOP.en>}}を実現する為に、今まで3連符2つ目で発音していた末子音を次の音節の頭子音(つまり2階層目の3連符の3つ目)にまとめます。これをここでは**頭子音最大化処理** と呼びます。

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv2.ly
```
<!-- DjP07omgzmg47kjmALzX/w== -->

##### レベル3 {{<meta var.PNI.en>}}    <!-- {#ppns-2-3} -->

レベル3 {{<meta var.PNI.en>}}を実現する為に、この章の冒頭で御説明した通り、これまで数字を拍先頭に配置していたものを、数字が前拍の1階層目の3連符の3拍目くるように全体を移動します。結果として&が拍の先頭にくる様に配置されます。


```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3.ly
```

これは譜面を見ると複雑に見えますが、この章の冒頭で御説明した通り、レベル1レベル2の音韻表記厳密化を取り除くと単に1階層目の3連符1つ分を左に移動しただけもものです。

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3-001.ly
```

##### レベル4 {{<meta var.MPOP.en>}}    <!-- {#ppns-2-4} -->

レベル４は更に弱拍先行を更に推し進めます。

レベル３で弱拍先行を実現する為、オフセット（ずれ）を付加することでカウントを早めました。

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv3-001.ly
```

このずれをつけた状態で a を先に読むことで二重の弱拍先行（頭音節最大化）を行います。

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv4-000.ly
```

この状態でレベル1レベル2の音韻表記厳密化を行うと次の様になります。

---

```{.lilypond-file}
common-ly/shared/rhythmdo-lv2-lv4.ly
```

---

音韻規則レベル２で可能な音韻表記厳密化はここまでです。


