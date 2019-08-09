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
# Load the libraries
import pandas as pd
import numpy as np

# Load the dataset
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# [DIY] Look at the first rows of the data. Use `print` function to print the result to console
print(df.head())

# [DIY] Look at the last rows of the data. Use `print` function to print the result to console
print(df.tail())
# [DIY] Summarize the numerical variables
df.describe()

```

`@sct`
```{python}
Ex().check_function("df.head").has_equal_output()
Ex().check_function("df.tail").has_equal_output()
Ex().check_function("df.describe").has_equal_output()
success_msg("Good Job!")
```

---

## Linear regression

```yaml
type: NormalExercise
key: eb2819ee90
xp: 100
```

The simplest sort of the regression is a linear Ordinary Least Squares (OLS) regression. This is the method that tries to fit the straight line into your two-dimensional scatter plot data such that this line (predicted values) has the lowest possible squared errors compared to actual values (which we observe in our data — hence, supervised learning).

In its simplest form we will try to predict the values of one variable (in this case `mpg`) by looking at the values of another variable (in this case `cyl`).

Linear regression can be run by using function `ols` from `statsmodels.formula.api`. Of course, in Python it is better to create an object which would hold your “regression object” that can be visualised at later point. After creating the model, we should use `fit()` method on the model. We can do it in one go as `smf.ols("the formula", data).fit()`.

The left-hand-side variable is our dependent variable. While the right-hand-side variable is referred to as an independent variable.

The summary of the model can be called `model_name.summary()` and  specifies coefficients for the fitted line (intercept, and the slope of the line) as well as many other feature of the model. The most important of these values are:

R-squared, that takes values between 0 and 1 and measures the fit of the model. Or, in other word, how much variation in our dependent variable can be explained by the variation in independent variable. Or, how accurately we can predict the value of the left-hand-side variable by looking at the value of the right-hand-side variable.
p-value (or in this output `Pr(>|t|)`) of each of the coefficient, which represents the p-value of the test with the null hypothesis of the actual coefficient being zero (with an alternative hypothesis of it not being zero). Recall that p-value measures the size of the error that we will be making if we rejected our null hypothesis in favor of the alternative. Therefore, low p-value (less than 0.05) means that the likelihood of making an error if we claim that the slope of the line is different from zero (in other words, that our independent variable can predict our independent variable) is very small. Notice that the number 6.11e-10 is extremely small: it basically is 6.11 divided by 1 followed by 10 zeros (so, basically 0.000000000611).
We can generate the scatter plot of our data in Python using `regplot()` function from `seaborn`. 

`@instructions`
- Notice that you only need to specify your variable names in function `ols()` as you are specifying the dataset to use.
- Notice that `regplot()` function in R first takes the variable that you want to measure on x-axis, and then the variable to be measured on y-axis. Which is of course different for the regression, where the variable to model always have to go first and will be visualized on y-axis.

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Loading the libraries
import pandas as pd
import statsmodels.formula.api as smf
import seaborn as sns
import matplotlib.pyplot as plt

# Loading the data
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Create a model and save it to the object and look at the summary
model1 = smf.ols("mpg ~ cyl", data = df).fit()
print(model1.summary())
```

`@solution`
```{python}

```

`@sct`
```{python}

```
