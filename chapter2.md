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

NumPy arrays are much like Python lists, but different from lists, they are very efficient in numerical calculations. `np.array()` is the main function to create or convert existing data to a NumPy ndarray (hereafter array). Arrays support all kinds of calculations including addition, division, subtraction, multiplication, transformation and etc.

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

---

## Pandas data frames

```yaml
type: NormalExercise
key: 5bf567c736
xp: 100
```

Data frames are consisting of NumPy arrays which also have names (columns) and indexes (rows) attached to them. `pd.DataFrame()` is the main function to create or convert existing data to a pandas data frame object (hereafter dataframe). Data frame not only support almost everything NumPy supports, but also it has additional functionality like querying, merging, summarizing, data reading and even plotting!
Indexing a dataframe is similar to indexing a list. Instead of number, you can use column name as and index in squared brackets like `dataframe["column_name"]`. If you index a column which does not exist and assign a value(s) to it, then this column will be automatically created with given value(s).
You can not only give custom values, but also use existing columns to calculate the new columns too. The notion is the same as variable operations in Python. Easy as that!

`@instructions`
1. Create a list of sales [10, 11, 23, 42, 12]
2. Find the maximum of the sales
3. Find the total sales
4. Find the total bonuses

`@hint`
1. Create a list with `[]` in Python
2. Use `max()` for finding the maximum of the sales
3. Use `sum()` for finding the total sales

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Importing the packages
import pandas as pd
import numpy as np


# Create a list of departments
departments = ["First", "Second", "Third", "Fourth", "Fifth"]

# [DIY] Create a NumPy array named sales with values 10, 11, 23, 42, 12


# Create a dataframe. Pandas works with both Python and NumPy data types!
df = pd.DataFrame({"dept" : departments, "sales": sales})

# Minimum of the sales
print(df["sales"].min())

# [DIY] Maximum of the sales


# Create a column named bonus_pct and assign 0.1 to it
df["bonus_pct"] = 0.1

# Create a column bonus which is the multiplication of sales and bonus_pct
df["bonus"] = df["sales"] * df["bonus_pct"]

# Print the dataframe
print(df)

# [DIY] Find total bonuses

# Summary statistics of numerical values of the dataframe
print(df.describe())
```

`@solution`
```{python}
# Importing the packages
import pandas as pd
import numpy as np


# Create a list of departments
departments = ["First", "Second", "Third", "Fourth", "Fifth"]

# [DIY] Create a NumPy array named sales with values 10, 11, 23, 42, 12
sales = np.array([10, 11, 23, 42, 12])

# Create a dataframe. Pandas works with both Python and NumPy data types!
df = pd.DataFrame({"dept" : departments, "sales": sales})

# Minimum of the sales
print(df["sales"].min())

# [DIY] Maximum of the sales
print(df["sales"].max())

# Total sales
print(df["sales"].sum())

# Create a column named bonus_pct and assign 0.1 to it
df["bonus_pct"] = 0.1

# Create a column bonus which is the multiplication of sales and bonus_pct
df["bonus"] = df["sales"] * df["bonus_pct"]

# Print the dataframe
print(df)

# [DIY] Find total bonuses
print(df["bonus"].sum())

# Summary statistics of numerical values of the dataframe
print(df.describe())
```

`@sct`
```{python}
Ex().check_object("sales").has_equal_value()
Ex().has_output("42")
Ex().has_output("9.8")

success_msg("Good Job!")
```

---

## Visualization

```yaml
type: NormalExercise
key: 301c3c486c
xp: 100
```



`@instructions`


`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}

```

`@solution`
```{python}

```

`@sct`
```{python}

```
