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

Regression analysis is a workhorse of the inferential statistics. It allows us to take first steps into modeling certain variables by using information available to us.

This is also a method of supervised machine learning, which means that it is necessary to have some information about the variable that we are actually modeling.

In a nutshell, regression analysis will help us predict a value of one variable by having information about other variables.

For example, we could use somebody’s grade in statistics course to predict the grade in a different course.

In this section we will be using `mtcars` dataset that we have already used before.

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
# We know that we have not actually covered displaying last raws of the dataset, but here is where Google and/or your creativity comes in! Take charge!

# [DIY] Summarize numerical variables

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
# We know that we have not actually covered displaying last raws of the dataset, but here is where Google and/or your creativity comes in! Take charge!
print(df.tail())
# [DIY] Summarize numerical variables
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

The simplest sort of the regression is a linear Ordinary Least Squares (OLS) regression. This is the method that tries to fit the straight line into your two-dimensional scatter plot data such that this line (predicted values) has the lowest possible error compared to actual values.

In its simplest form we will try to predict the values of one variable (in this case `mpg`) by looking at the values of another variable (in this case `cyl`).

Linear regression can be run by using function `ols` from `statsmodels.formula.api`, which we will import as `smf`. Of course, in Python it is better to create an object which would hold your “regression object” that can be visualised at a later point. After creating the model, we should use `.fit()` method on the model. We can do it in one go as `smf.ols("the formula", data).fit()`.

The left-hand-side variable is our dependent variable. While the right-hand-side variable is referred to as an independent variable.

The summary of the model can be displayed by calling `model_name.summary()`. You should be able to understand most of the output.

Notice that some numbers are given in a following format: 6.11e-10. These are very small numbers: this is 6.11 divided by 1 followed by 10 zeros (so, basically 0.000000000611).

We can generate the scatter plot of our data and regression line in Python using `regplot()` function from `seaborn`.

`@instructions`
- Notice that you only need to specify your variable names in function `ols()` as you are specifying the dataset to use.
- Notice that `sns.regplot()` function in Python first takes the variable that you want to measure on x-axis, and then the variable to be measured on y-axis. Which is of course different for the regression modeling, where the variable to model always have to go first.
- Attention on spacing in model formulas

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

# Create a model and save it to the object
model1 = smf.ols("mpg ~ cyl", data = df).fit()
# Visualize the summary/output of the regression
print(model1.summary())

# Plot the regression line
sns.regplot(x = "cyl", y = "mpg", data = df)
plt.show()

# [DIY] Make a new regression explaining variable "drat" by variable "wt"

# [DIY] Print the summary

```

`@solution`
```{python}
# Loading the libraries
import pandas as pd
import statsmodels.formula.api as smf
import seaborn as sns
import matplotlib.pyplot as plt

# Loading the data
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Create a model and save it to the object
model1 = smf.ols("mpg ~ cyl", data = df).fit()
# Visualize the summary/output of the regression
print(model1.summary())

# Plot the regression line
sns.regplot(x = "cyl", y = "mpg", data = df)
plt.show()

# [DIY] Make a new regression explaining variable "drat" by variable "wt"
model2 = smf.ols("drat ~ wt", data = df).fit()

# [DIY] Print the summary
print(model2.summary())
```

`@sct`
```{python}
Ex().check_function("statsmodels.formula.api.ols", 1).multi(
  check_args("formula").has_equal_value(),
  check_args("data").has_equal_value()
)
Ex().check_function("model2.summary").has_equal_output()
success_msg("Good Job!")
```

---

## Multivaraite linear regression

```yaml
type: NormalExercise
key: 1544533360
xp: 100
```

In previous chapter we have tried to predict the value of one variable by using the information about another variable.

In principle there is no reason why we might want to use the information from only one variable to model our variable of interest. Maybe the grade of a student in a particular class can be predicted better if we use some other information together with his/her grade in the statistics class?

Multivariate linear regression allows us to do just that. With a simple line of code we can specify a multiple independent variables that could help us predict our dependent variable. (Notice that using linear regression we cannot model multiple dependent variables at the same time. So, only one left-hand-side variable at a time).

Notice that adding independent variables to the regression might change coefficients associated to right-hand-side variables that were already in the model, as well as R-squared of the model. For example, by taking into account the information in variable `wt` together with the information in variable `cyl` to predict variable `mpg` allows us to increase the predictive power of the model from 79% to 83% (see R-square).

`@instructions`
- Notice that as we are using several independent variables, visualization of the regression line on the scatter plot does not make much sense.
- Notice that the p-value of the `cyl` variable also changes if we also include `wt` in the model.

`@hint`
One can chain different functions on one object transforming it to some new object. Use this in order to solve the last task

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

# Modeling the effect of "cyl" and "wt" on "mpg"
model1 = smf.ols("mpg ~ cyl + wt", data = df).fit()
print(model1.summary())

#[DIY] Add another dependent variable "hp" to the regression performed above and output the summary


# Produce the scaterplot of the relation between "mpg" and "cyl". You cannot have more than two variables as you are producing a two-dimentional plot.
sns.regplot(x = "mpg", y = "cyl", data  = df)
plt.show()

# [DIY] Somewhat advanced: In one line of code, visualize the output of a linear regression with "mpg" as a dependent variable and "cyl", "qsec", "gear" and "carb" as independent variables

```

`@solution`
```{python}
# Loading the libraries
import pandas as pd
import statsmodels.formula.api as smf
import seaborn as sns
import matplotlib.pyplot as plt

# Loading the data
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Modeling the effect of "cyl" and "wt" on "mpg"
model1 = smf.ols("mpg ~ cyl + wt", data = df).fit()
print(model1.summary())

#[DIY] Add another dependent variable "hp" to the regression performed above and output the summary
model2 = smf.ols("mpg ~ cyl + wt + hp", data = df).fit()
print(model2.summary())

# Produce the scaterplot of the relation between "mpg" and "cyl". You cannot have more than two variables as you are producing a two-dimentional plot.
sns.regplot(x = "mpg", y = "cyl", data  = df)
plt.show()

# [DIY] Somewhat advanced: In one line of code, visualize the output of a linear regression with "mpg" as a dependent variable and "cyl", "qsec", "gear" and "carb" as independent variables
print(smf.ols("mpg ~ cyl + qsec + gear + carb", data=df).fit().summary())

```

`@sct`
```{python}
Ex().check_function("statsmodels.formula.api.ols", 1).multi(
	check_args("formula").has_equal_value(),
  	check_args("data").has_equal_value()
)
Ex().check_function("model2.summary").has_equal_output()
Ex().check_function("statsmodels.formula.api.ols", 2).multi(
	check_args("formula").has_equal_value(),
  	check_args("data").has_equal_value()
)
success_msg("Good Job!")
```

---

## Logistic regression

```yaml
type: NormalExercise
key: 6eae6deaaa
xp: 100
```

Linear regression is a great tool for first steps in exploring the data. However, it might not be the best tool to model certain variables.

For example, if we are modeling a variable that represents a market share of the company on the market, using linear regression might be problematic. If the slope of the line is not zero, linear regression could easily predict that certain firms would have 140% of the market share, or -40% of the market share. This is, clearly, not reasonable.

Therefore, for modeling share variables we might have to use different approach.

The most straight forward of the methods available for these kinds of models is the generalized linear models, which makes sure that values of the predicted variable are confined to the interval between zero and one. We will use `statsmodels.discrete.dicsrete_model.Logit` for that.

Logistic regression is one of the most widespread applications of the generalized linear models.

`@instructions`
- Compare the outputs of the two models on the right (both modeling `mpgShare` by use of `cyl` and `wt`): 
the standard linear regression and the logistic regression.
- Notice that logistic regression does not have R-squared statistics

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Loading the libraries
import pandas as pd
import statsmodels.formula.api as smf
from statsmodels.discrete.discrete_model import Logit

# Loading the data
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Create a new variable mpgShare (which will be a part of our dataset "a") and will
# take a value of "mpg" divided by the highest value of "mpg" found in the dataset
df["mpgShare"] = df["mpg"] / df["mpg"].max()

# [DIY] run a linear regression, modeling the value of mpgShare
# with variables "cyl" and "wt" 
model1= 

# Visualize the output of the above regression
print(model1.summary())

# Run a logistic regression, modeling the value of mpgShare
# with variables "cyl" and "wt" 
model2 = Logit.from_formula("mpgShare ~ cyl + wt",data = df).fit()

#[DIY] visualize the output of the above regression

```

`@solution`
```{python}
# Loading the libraries
import pandas as pd
import statsmodels.formula.api as smf
from statsmodels.discrete.discrete_model import Logit

# Loading the data
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Create a new variable mpgShare (which will be a part of our dataset "a") and will
# take a value of "mpg" divided by the highest value of "mpg" found in the dataset
df["mpgShare"] = df["mpg"] / df["mpg"].max()

# [DIY] run a linear regression, modeling the value of mpgShare
# with variables "cyl" and "wt" 
model1= smf.ols("mpgShare ~ cyl + wt", data = df).fit()

# Visualize the output of the above regression
print(model1.summary())

# Run a logistic regression, modeling the value of mpgShare
# with variables "cyl" and "wt" 
model2 = Logit.from_formula("mpgShare ~ cyl + wt",data = df).fit()

#[DIY] Visualize the output of the above regression
print(model2.summary())
```

`@sct`
```{python}
Ex().check_function("statsmodels.formula.api.ols").multi(
	check_args("formula").has_equal_value(),
  	check_args("data").has_equal_value()
)
Ex().check_function("statsmodels.discrete.discrete_model.Logit.from_formula").multi(
	check_args("formula").has_equal_value(),
  	check_args("data").has_equal_value()
)
Ex().check_function("model2.summary").has_equal_output()
success_msg("Good Job!")
```

---

## Poisson regression

```yaml
type: NormalExercise
key: a1bf7d6e76
xp: 100
```

Linear regression might not be the best tool to model certain (other than shares) types of data. For example, is we are modeling count data (e.g. number of times a consumer has visited a particular website), OLS might predict that this number is -3. This is not possible, clearly.

Other types of generalized linear models take into account of the count nature of the data.

The most widespread of such models are Poisson models. The syntax of this model is similar to that of the logistic model (as both are part of `statsmodels.discrete.discrete_mdel` family).

`@instructions`
- Compare the output of the two models on the right (both modeling gear by use of mpg): the standard linear regression and the Poisson regression.
- Notice that Poisson regression does not have R-squared statistics.
- Run `help(statsmodels.discrete.discrete_mdel.Poisson)` and study the displayed documentation carefully.

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Loading the libraries
import pandas as pd
import statsmodels.formula.api as smf
from statsmodels.discrete.discrete_model import Poisson

# Loading the data
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

#[DIY] run a linear regression, modeling "gear" with "mpg"
# (i.e. regress "mpg" on "gear")
model1 =

#[DIY] visualize the output of the model1 above


#Run a Poisson regression, modeling "gear" with "mpg"
# (i.e. regress "mpg" on "gear" by using a Poisson model)
model2 = Poisson.from_formula("gear ~ mpg", data=df).fit()

#[DIY] visualize the output of the model2 above

```

`@solution`
```{python}
# Loading the libraries
import pandas as pd
import statsmodels.formula.api as smf
from statsmodels.discrete.discrete_model import Poisson

# Loading the data
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

#[DIY] run a linear regression, modeling "gear" with "mpg"
# (i.e. regress "mpg" on "gear")
model1 = smf.ols("gear ~ mpg", data = df).fit()

#[DIY] visualize the output of the model1 above
print(model1.summary())

#Run a Poisson regression, modeling "gear" with "mpg"
# (i.e. regress "mpg" on "gear" by using a Poisson model)
model2 = Poisson.from_formula("gear ~ mpg", data=df).fit()

#[DIY] visualize the output of the model2 above
print(model2.summary())
```

`@sct`
```{python}
Ex().check_function("statsmodels.formula.api.ols").multi(
	check_args("formula").has_equal_value(),
  	check_args("data").has_equal_value()
)
Ex().check_function("model1.summary").has_equal_output()
Ex().check_function("statsmodels.discrete.discrete_model.Poisson.from_formula").multi(
	check_args("formula").has_equal_value(),
  	check_args("data").has_equal_value()
)

Ex().check_function("model2.summary").has_equal_output()
success_msg("Good Job!")
```
