---
title: 'Hyphotesis testing'
description: 'Hyphotesis testin with Python'
---

## Introduction

```yaml
type: NormalExercise
key: dce5363e63
xp: 100
```

In this section we will cover hypothesis testing. We will use `scipy` package for this purpose.

We will cover two types of tests:

- proportion tests (z-test)
- mean tests (t-tests)
Python is flexible enough to allow its user specify various characteristics for tests (e.g. null hypothesis, alternative hypothesis, confidence level).

Before going into details let’s load the data.

Recall how we calculated the sum of a column. In order to calculate the mean and standard error we use the similar notation:
```
df.colname.mean()

df.colname.std()

```

`@instructions`


`@hint`
- For indexing a column, use the dot notation: `df.column_name`

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Loading pandas
import pandas as pd

# Loading the dataset from seaborn library. We can use URL to load the data from the Web
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Take a glimpse at the dataset to understand how it looks like
df.head()

# [DIY] Calculate the mean of the "disp" column using dot notation


# [DIY] Calculate the standard deviation of the "disp" column using dot notation


# One can also calculate the means of all numeric columns in a dataset
df.mean()

# [DIY] Calculate the standard deviation of all numeric variables


```

`@solution`
```{python}
# Loading pandas
import pandas as pd

# Loading the dataset from seaborn library. We can use URL to load the data from the Web
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Take a glimpse at the dataset to understand how it looks like
df.head()

# [DIY] Calculate the mean of the "disp" column using dot notation
df.disp.mean()

# [DIY] Calculate the standard deviation of the "disp" column using dot notation
df.disp.std()

# One can also calculate the means of all numeric columns in a dataset
df.mean()

# [DIY] Calculate the standard deviation of all numeric variables
df.std()

```

`@sct`
```{python}
Ex().check_function("df.disp.mean").has_equal_value()
Ex().check_function("df.disp.std").has_equal_value()
Ex().check_function("df.std").has_equal_value()
```
