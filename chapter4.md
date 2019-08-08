---
title: Regression
description: "Regression analysis\n"
---

## Introduction

```yaml
type: NormalExercise
key: 14d7702b09
xp: 100
```

Regression analysis is a workhorse of the inferential statistics. It allows us to take first steps into modelling certain variables by using information available to us.

This is also a method of supervised machine learning, which means that it is necessary to have some information about the variable that we are actually modelling.

In a nutshell, regression analysis will help us predict a value of one variable by having information about other variables.

For example, we could use somebody’s grade in statistics course to predict the grade in a different course.

In this section we will be using `mtcars` dataset that we have been also using before.

Refresh your memory about the dataset by completing tasks on your right.

`@instructions`
Use `describe` and `head` / `tail` functions to look at the data

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Load the libraries
import pandas as pd
import numpy as np

# Load the dataset
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# [DIY] Look at the first rows of the data. Use `print` function to print the result to console


# [DIY] Look at the last rows of the data. Use `print` function to print the result to console


# [DIY] Summarize the numerical variables


```

`@solution`
```{python}

```

`@sct`
```{python}

```
