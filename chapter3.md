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

---

## z-test

```yaml
type: NormalExercise
key: 09f38916a7
xp: 100
```

Z-test is a test for the proportions. In other words this is a statistical test that helps us evaluate our beliefs about certain proportions in the population based on the sample at hand.

This can help us answer the questions like:

- is the proportion of female students at SKEMA equal to 0.5.
- is the proportion of smokers in France equal to 0.15.
If you recall the lecture, for conducting Z-test you do not need much calculations on your sample data. The only thing you need to know is the proportion of observations that qualify to belong to the sub-sample you are interested in (e.g. a “female SKEMA student”, or a “French smoker” in examples above).

In the simplest example involving the data at hand, we can ask the question whether the share of cars with variable “am” being equal to 0 is equal to 50%.

Function used for z-testing is `scipy.stats.binom_test`. It requires three arguments x - number of qualified observations in our data (19 in our case) n - number of total observations (32 in our case) p - the null hypothesis on the share of qualified data (0.5 in our case)

Output of the test gives rich information about the test:

- It specifies the alternative hypothesis (this is a default option, we can adjust this in next chapter)
- It specifies the confidence level and interval
- It also gives us the proportion that we observed in our sample data
- Most importantly it gives us the p-value of the test.

This value can be understood as the probability that we are making a mistake if we reject our null hypothesis in favor of the alternative one. In this case this probability is 38% which is very high (anything above 10% is high), which would prompt us to conclude that we do not have enough statistical evidence to claim that the share of cars with am=0 was not 50% in the population!

`@instructions`
- Use `value_counts()` function to display th frequency distribution of the desired varible
- Test whether the share of cars with the number of cylinders less than 6 is equal to 0.6
- What is your conclusion about the test on number of cylinders?

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Load the libraries
import pandas as pd
from scipy.stats import binom_test

# Load the dataset
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Display the distribution of variable "am"
print(df.am.value_counts())

# Running our test given the frequency distributions where "am" = 0
print(binom_test(x = 19, n = 32, p = 0.5))

# [DIY] Calculate how many cars in the dataset have less than 6 cylinders


# [DIY] Test whether we have enough statistical evidence to claim that the share of cars with less than 6 cilinders is not 60%


```

`@solution`
```{python}
# Load the libraries
import pandas as pd
from scipy.stats import binom_test

# Load the dataset
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Display the distribution of variable "am"
df.am.value_counts()

# Running our test given the frequency distributions where "am" = 0
binom_test(x = 19, n = 32, p = 0.5)

# [DIY] Calculate how many cars in the dataset have less than 6 cylinders
df.cyl.value_counts()

# [DIY] Test whether we have enough statistical evidence to claim that the share of cars with less than 6 cilinders is not 60%
binom_test(x = 11, n = 32, p = 0.6)

```

`@sct`
```{python}
Ex().check_function("df.cyl.value_counts").has_equal_value()
Ex().check_function("scipy.stats.binom_test").check_args(0).has_equal_value()
Ex().check_function("scipy.stats.binom_test").check_args(1).has_equal_value()
Ex().check_function("scipy.stats.binom_test").check_args(2).has_equal_value()
```
