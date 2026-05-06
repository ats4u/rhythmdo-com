### Four Division Spaces
Up to now, in Offbeat Count, we have counted beats using the unit in which one quarter note equals one beat. This unit is called **division**.

And for beats created by subdividing quarter notes, such as eighth notes and triplets, we have counted them not with numbers but by assigning the three symbols/letters **&** **E** **A**.

Here, division and subdivision together are called a **division space**. In ordinary rhythm theory, there are two such division spaces: **division** and **subdivision**.

Division-Space Theory expands these two division spaces by applying the process called **multidimensionalization**, and defines four division spaces.

* Four Division Spaces
  * Macrodivision (measure = composite beat)
  * Division (quarter note = beat)
  * Subdivision (eighth notes and other smaller note values = sub-beat)
  * Microdivision (beats too fine to be written as notes = micro-beat)

Now I will explain the characteristics of these four division spaces.

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
