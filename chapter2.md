---
title: 'Chapter 2'
description: 'Introduction to NumPy, Pandas and simple plots'
---

## Introduction

```yaml
type: NormalExercise
key: a8747afde6
xp: 100
```

The bare bone of Python data science ecosystem is NumPy array. Other tools like Pandas, Matplotlib, Scikit-learn are all based and built on NumPy arrays. That's why, understanding the functionality of NumPy is very crucial. NumPy arrays are basically equivalent of matrices in Matlab and vectors in R.
In order to use the functionality of NumPy one need to install and import it. For anyone using Anaconda distribution (which is the rule of thumb) NumPy is available out of the box.
In order to import NumPy one need to use the `import` keyword of Python
```
import numpy as np
```
As you notice, we imported NumPy as **np**. Np here is an alias we gave it so that we don't have to write **numpy** every time.
Here are some generally accepted aliases that you may come up with frequently:
1. Numpy - np
2. Pandas - pd
3. Matplotlib.pyplot - plt
4. Seaborn - sns

From here on, we will use aliases where possible.

`@instructions`
Import NumPy and give it an alias **np**

`@hint`
In order to import a module, use `import` keyword.

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Importing pandas with an alias
import pandas as pd

# [DIY] Import numpy with an alias np

```

`@solution`
```{python}
# Importing pandas with an alias
import pandas as pd

# [DIY] Import numpy with an alias np
import numpy as np
```

`@sct`
```{python}
Ex().has_code("import numpy as np")
success_msg("Good job!")
```

---

## NumPy arrays

```yaml
type: NormalExercise
key: 4aa7786816
xp: 100
```

NumPy arrays are much like Python lists, but different from lists, they are very efficient in numerical calculations. `np.array()` is the main function to create or convert existing data to a NumPy array (hereafter array). Arrays support all kinds of calculations including addition, division, subtraction, multiplication, transformation and etc.


`@instructions`
1. Perform the subtraction
2. Perform the division

`@hint`
1. Use Python's `-` operator for subtraction
2. Use Python's `/` operator for division

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Importing Numpy
import numpy as np

# Creating an array
a = np.array([1, 2, 3, 4])

# Adding 4 to each element
print(a + 4)

# [DIY] Subtract 4 from each element
print()

# Multiplying each element by 2
print(a * 2)

# [DIY] Dividing each element by 2
print()
```

`@solution`
```{python}
# Importing Numpy
import numpy as np

# Creating an array
a = np.array([1, 2, 3, 4])

# Adding 4 to each element
a + 4

# [DIY] Subtract 4 from each element
a - 4

# Multiplying each element by 2
a * 2

# [DIY] Dividing each element by 2
a / 2
```

`@sct`
```{python}
Ex().has_code("a*-*4")
Ex().has_code("a*/*2")
success_msg("Good job!")
```
