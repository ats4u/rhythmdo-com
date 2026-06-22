### ４つのディヴィジョン空間
これまでオフビートカウントで拍を数えるにあたって、４分音符１つを１拍とする単位（ディヴィジョン）で数えて来ました。

そして４分音符を分割して出来る８分音符や３連符などの拍（サブ・ディヴィジョン）については、数字ではなく **＆** **Ｅ** **Ａ** の３つの 記号/アルファベット を割り当てることで数えてきました。

このディヴィジョン・サブディヴィジョンのことをここでは**ディヴィジョン空間** と呼びます。 通常のリズム理論ではこのディヴィジョン空間は、**ディヴィジョン** と **サブディヴィジョン** の２つが存在します。

ディヴィジョン空間理論では、この２つのディヴィジョン空間を**多次元化**という処理を加えることにおって拡張し４つのディヴィジョン空間を定義します。

* ４つのディヴィジョン空間
  * マクロ・ディヴィジョン(小節=合拍=Macrodivision)
  * ディヴィジョン (4分音符=拍=Division )
  * サブ・ディヴィジョン (８分音符等々の分音符=分拍=Subdivision )
  * マイクロ・ディヴィジョン(音符では書き表せない拍＝微分拍=Microdivision)

そしてこの４つのディヴィジョン空間の特徴を説明致します。

```{python}
#| output: asis
from pathlib import Path
import sys
import os

## Go one directory up from the current working dir
# parent = Path.cwd().parent.parent
parent = os.getenv( "RHYTHMPRESS_ROOT" )

project_lib = Path(parent) / ".project-lib"

if str(project_lib) not in sys.path:
    sys.path.insert(0, str(project_lib))

## now imports from project-local library work

from groovespace import *


```
