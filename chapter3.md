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

Before going into details we will need to load our data.

Remember how we calculated the sum of a variable? In order to calculate the mean and standard deviation we use the similar notation:
```
dataframe_name["variable_name"].mean()

dataframe_name["variable_name"].std()

```
or
```
dataframe_name.variable_name.mean()

dataframe_name.variable_name.std()

```
Notice that the second option (dot notation) is more concise, as it contains less characters. This is a better practice. Let's stick to it.

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

# Loading the dataset in .csv (comma separated value) format from a location on the web.
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")
# As you see, you can directly use the URL of the data file.

# Now your machine sees your data, but you do not.
# You can visualize/display your data by simply calling it out:
df

# This is a short/small dataset. So, displaying it completely might work.
# However, most datasets will be so large that this will be useless.
# Instead you can use .head() function, which will allow you to see only first few observations of your dataset
# This will be sufficient for understanding what variables you are dealing with
df.head()

# Once you see variable names, you can refer to them.
# [DIY] Calculate the mean of the "disp" variable using dot notation


# [DIY] Calculate the standard deviation of the "disp" variable using dot notation


# One can also calculate the means of all numeric columns in a dataset
df.mean()

# [DIY] Calculate the standard deviation of all numeric variables

```

`@solution`
```{python}
# Loading pandas
import pandas as pd

# Loading the dataset in .csv (comma separated value) format from a location on the web.
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")
# As you see, you can directly use the URL of the data file.

# Now your machine sees your data, but you do not.
# You can visualize/display your data by simply calling it out:
df

# This is a short/small dataset. So, displaying it completely might work.
# However, most datasets will be so large that this will be useless.
# Instead you can use .head() function, which will allow you to see only first few observations of your dataset
# This will be sufficient for understanding what variables you are dealing with
df.head()

# Once you see variable names, you can refer to them.
# [DIY] Calculate the mean of the "disp" variable using dot notation
df.disp.mean()

# [DIY] Calculate the standard deviation of the "disp" variable using dot notation
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

For conducting Z-test you do not need much calculations on your sample data. The only thing you need to know is the proportion of observations that qualify to belong to the sub-sample you are interested in (e.g. a “female SKEMA student”, or a “French smoker” in examples above).

We will use the dataset on cars in the US for learning purposes. This contains a list of 32 cars and their characteristics.

In the simplest example involving the data at hand, we can ask the question whether the share of cars with variable “am” being equal to 0 is equal to 50%.

Function used for z-testing is `scipy.stats.binom_test`. It requires three arguments x - number of qualified observations in our data (19 in our case) n - number of total observations (32 in our case) p - the null hypothesis on the share of qualified data (0.5 in our case)

Output of the test gives rich information about the test:

- It specifies the alternative hypothesis (by default it is set to conduct a two-sided test, so the alternative hypothesis is that the share is not equal to the proportion specified in the null hypotheses. However, we will see how to adjust this in next chapter)
- It specifies the confidence level and interval
- However, by default, it only returns the most important piece of information - the p-value of the test

This value can be understood as the probability that we are making a mistake if we reject our null hypothesis in favor of the alternative one. In this case this probability is 38% which is very high (anything above 10% is high), which would prompt us to conclude that we do not have enough statistical evidence to claim that the share of cars with am=0 was not 50% in the population.

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

# In order to conduct a test we need our three inputs.
# Nul hypotheses is whether the share of cars with am=0 is equal to 50%. This (0.5 - a share!) is out first input (p).
# The two other inputs are the number of total observations in our dataset (n) and the number of observations satisfying the condition we are testing for [i.e. am=0] (x)
# We can get both of this information by diplaying (not plotting!) a simple frequency distribution of our am variable
# We can do this by using .value_counts() function
df.am.value_counts()

# This shows that x=19.
# By adding all frequencies, we can get the total number of observations in the dataset (n=32)
# Now we are ready to run the test (i.e. calculating the p-value of our test):
binom_test(x = 19, n = 32, p = 0.5)

# [DIY] Calculate how many cars in the dataset have less than 6 cylinders
df.cyl.value_counts()

# [DIY] Test (calculate the p-value) whether we have enough statistical evidence to claim that the share of cars with less than 6 cilinders is not 60%
binom_test(x = 11, n = 32, p = 0.6)

```

`@solution`
```{python}
# Load the libraries
import pandas as pd
from scipy.stats import binom_test

# Load the dataset
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# In order to conduct a test we need our three inputs.
# Nul hypotheses is whether the share of cars with am=0 is equal to 50%. This (0.5 - a share!) is out first input (p).
# The two other inputs are the number of total observations in our dataset (n) and the number of observations satisfying the condition we are testing for [i.e. am=0] (x)
# We can get both of this information by diplaying (not plotting!) a simple frequency distribution of our am variable
# We can do this by using .value_counts() function
df.am.value_counts()

# This shows that x=19.
# By adding all frequencies, we can get the total number of observations in the dataset (n=32)
# Now we are ready to run the test (i.e. calculating the p-value of our test):
binom_test(x = 19, n = 32, p = 0.5)

# [DIY] Calculate how many cars in the dataset have less than 6 cylinders


# [DIY] Test (calculate the p-value) whether we have enough statistical evidence to claim that the share of cars with less than 6 cilinders is not 60%


```

`@sct`
```{python}
Ex().check_function("df.am.value_counts", 0).has_equal_value()
Ex().check_function("scipy.stats.binom_test", 0).multi(
  check_args("x").has_equal_value(),
  check_args("n").has_equal_value(),
  check_args("p").has_equal_value()
)
Ex().check_function("df.cyl.value_counts", 0).has_equal_value()
Ex().check_function("scipy.stats.binom_test", 1).multi(
  check_args("x").has_equal_value(),
  check_args("n").has_equal_value(),
  check_args("p").has_equal_value()
)
```

---

## Alternative hypothesis

```yaml
type: NormalExercise
key: 9271761056
xp: 100
```

Alternative hypothesis
In the previous chapter we have not specified the alternative hypothesis. Instead, Python automatically performed a two-sided test. This is a default option.

We can, of course, specify the alternative hypothesis we want to work with.

This is imply an additional argument in our `scipy.stats.binom_test` function. This argument is `alternative`, and takes three values `“two-sided”`, `“less”` and `“greater”`.

On the right you see the same test from last chapter executed twice. First without specifying alternative hypothesis. Then with the specification. This clearly makes no difference.

However, if we want to perform a one-sided test checking whether we have any statistical evidence that the share of am=0 cars is less than 0.5, we have to specify the argument `alternative="less”`

Notice that in this case the p-value is 89% which means that we (again) do not find sufficient evidence to reject our null hypothesis in favor of the alternative.

`@instructions`
- Simply change the value of the `alternative` in order to test whether the share of am=0 cars is more than 0.5.
- What is the conclusion from this test?
- When testing for the share of the less than 6 cylinder cars, do not forget to first calculate the number of such cars in our dataset, by using `value_counts()`

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Load the packages
import pandas as pd
from scipy.stats import binom_test

# Load the dataframe
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

#perform the test without alternative specification
binom_test(x=19, n=32, p=0.5)

#perform the same test with specifying "two sided" as an alternative hypothesis
binom_test(x=19, n=32, p=0.5, alternative="two-sided")

#perform the test checking whether the share of am=0 cars is less than 0.5
binom_test(x=19, n=32, p=0.5, alternative="less")

#[DIY] perform the t-test checking whether the share of am=0 cars is greater than 0.5


#[DIY] perform the t-test checking whether the share of cars with less than 6 cylinders is greater than 20%



# Try to formulate your conclusion after calucating the p-value of the test every time!
```

`@solution`
```{python}
# Load the packages
import pandas as pd
from scipy.stats import binom_test

# Load the dataframe
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

#perform the test without alternative specification
binom_test(x=19, n=32, p=0.5)

#perform the same test with specifying "two sided" as an alternative hypothesis
binom_test(x=19, n=32, p=0.5, alternative="two-sided")

#perform the test checking whether the share of am=0 cars is less than 0.5
binom_test(x=19, n=32, p=0.5, alternative="less")

#[DIY] perform the t-test checking whether the share of am=0 cars is greater than 0.5
binom_test(x=19, n=32, p=0.5, alternative="greater")

#[DIY] perform the t-test checking whether the share of cars with less than 6 cylinders is greater than 20%
df.cyl.value_counts()
binom_test(x=11, n=32, p=0.2, alternative="greater")

# Try to formulate your conclusion after calucating the p-value of the test every time!
```

`@sct`
```{python}
Ex().check_function("scipy.stats.binom_test", 0).multi(
  check_args("x").has_equal_value(),
  check_args("n").has_equal_value(),
  check_args("p").has_equal_value()
)
Ex().check_function("scipy.stats.binom_test", 1).multi(
  check_args("x").has_equal_value(),
  check_args("n").has_equal_value(),
  check_args("p").has_equal_value(),
  check_args("alternative").has_equal_value()
)
Ex().check_function("scipy.stats.binom_test", 2).multi(
  check_args("x").has_equal_value(),
  check_args("n").has_equal_value(),
  check_args("p").has_equal_value(),
  check_args("alternative").has_equal_value()
)

Ex().check_function("scipy.stats.binom_test", 3).multi(
  check_args("x").has_equal_value(),
  check_args("n").has_equal_value(),
  check_args("p").has_equal_value(),
  check_args("alternative").has_equal_value()
)
Ex().check_function("df.cyl.value_counts").has_equal_output()
Ex().check_function("scipy.stats.binom_test", 4).multi(
  check_args("x").has_equal_value(),
  check_args("n").has_equal_value(),
  check_args("p").has_equal_value(),
  check_args("alternative").has_equal_value()
)
```

---

## t-test

```yaml
type: NormalExercise
key: 014ec4d4ad
xp: 100
```

T-test is the test on the mean of the variable. Using this test we will be able gain information in order to answer questions like:

- is the average income of French household different from 50k Euros?
- is the average grade of SKEMA students above 14?

And all this, of course, based on the sample of the data.

For this we will use a different data, data on characteristics of iris flowers that we can directly load from within the `seaborn` package.

The function we will need is `ttest_mean` from `statsmodels.stats.weightstats.DescrStatsW`. This is a two-sided test for the null hypothesis that the expected value (mean) of a sample of independent observations `a` is equal to the given population mean, `popmean`. It will output t-statistics, p-value and degrees of freedom (in this sequence) as a result.

Except that now, instead of calculating the number of observations qualifying of the test by hand (which we did in case of z-test), we can pass the variable we want to test to the function `DescrStatsW` and then run the function `ttest_mean`.

One can also specify the different alternative hypothesis in this check such as, two-sided (default),
larger and smaller

`@instructions`
- Perform the t-test of sepal width against population mean 3
- What does the result you see imply?

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Importing packages
import seaborn as sns
from statsmodels.stats.weightstats import DescrStatsW as smstat

# Loading the data
df = sns.load_dataset("iris")

# Perform the two sided t-test on sepal length with null hypotheses of mean being equal to 5.6
# First we need to specify the data and then run the function ttest_mean with the mean we want to check against
smstat(df.sepal_length).ttest_mean(5.6)

# [DIY] Perform the t-test on sepal width with the null hypotheses of mean being equal to 3

# Perform the t-test on sepal length with the mean being equal to 5.6 and the alternative hypothesis: the mean of sepal length being greater than null hypothesis
smstat(df.sepal_length).ttest_mean(5.6, alternative = "larger")

# [DIY] Perform the t-test on sepal length with the mean being equal to 5.6 and the alternative hypothesis: the mean of sepal length being smaller than 5.6

```

`@solution`
```{python}
# Importing packages
import seaborn as sns
from statsmodels.stats.weightstats import DescrStatsW as smstat

# Loading the data
df = sns.load_dataset("iris")

# Perform the two sided t-test on sepal length with null hypotheses of mean being equal to 5.6
# First we need to specify the data and then run the function ttest_mean with the mean we want to check against
smstat(df.sepal_length).ttest_mean(5.6)

# [DIY] Perform the t-test on sepal width with the null hypotheses of mean being equal to 3
smstat(df.sepal_width).ttest_mean(3)

# Perform the t-test on sepal length with the mean being equal to 5.6 and the alternative hypothesis: the mean of sepal length being greater than null hypothesis
smstat(df.sepal_length).ttest_mean(5.6, alternative = "larger")

# [DIY] Perform the t-test on sepal length with the mean being equal to 5.6 and the alternative hypothesis: the mean of sepal length being smaller than 5.6
smstat(df.sepal_width).ttest_mean(3, alternative = "smaller")
```

`@sct`
```{python}
Ex().check_function("scipy.stats.ttest_1samp", 1).multi(
  check_args("a").has_equal_value(),
  check_args("popmean").has_equal_value()
)
success_msg("Good Job!")
```

---

## Two sample t-test

```yaml
type: NormalExercise
key: 82b3cebe33
xp: 100
```

T-test can also be used to compare characteristics of two independent samples. For this, we will use `ttest_ind` function from `scipy.stats`.

This methodology can be used to get insight into questions like:

- Is the income of French population high than income of German population?
- Is the average resting heart rate of a sprinter lower than the average resting heart rate of a long-distance runner?
For this exercise we will need to have the information on the same variable for two unrelated samples.

In our case we could compare characteristics of two different species of iris. Say, `setosa` and `versicolor`. (attention on new code part)

We could compare `petal_length`, `sepal_length`, `petal_width` or `sepal_width`.

`@instructions`
- Perform two sample t-test on `petal_width` on `setosa` and `versicolor`
- Experiment with other features to compare, `sepal_width` for example. You can do it in `ipython` console

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Importing the libraries
import pandas as pd
import seaborn as sns
from scipy.stats import ttest_ind as tind

# Loading the data
df = sns.load_dataset("iris")

# Separating two samples into different data frames
df1 = df[df.species == 'setosa']
df2 = df[df.species == 'versicolor']
         
# Comparing petal length of the two species
tind(df1.petal_length, df2.petal_length)

# [DIY] Compare petal width of the two species

```

`@solution`
```{python}
# Importing the libraries
import pandas as pd
import seaborn as sns
from scipy.stats import ttest_ind as tind

# Loading the data
df = sns.load_dataset("iris")

# Separating two samples into different data frames
df1 = df[df.species == 'setosa']
df2 = df[df.species == 'versicolor']
         
# Comparing petal length of the two species
tind(df1.petal_length, df2.petal_length)

# [DIY] Compare petal width of the two species
tind(df1.petal_width, df2.petal_width)

```

`@sct`
```{python}
Ex().check_function("scipy.stats.ttest_ind", 1).multi(
  check_args("a").has_equal_value(),
  check_args("b").has_equal_value()
)
success_msg("Good Job!")
```

---

## Paired t-test

```yaml
type: NormalExercise
key: 583649fe1d
xp: 100
```

The paired t-test, also referred to as the paired-samples t-test or dependent t-test, is used to determine whether the mean of a dependent variable (e.g., weight, anxiety level, salary, reaction time, etc.) is the same across two different situations **within the same sample** (e.g., blood pressure before, and after the treatment, average grade in one course vs. average grade in another course for the same class). This allows us to answer following types of questions:

- Is the drug against blood pressure actually working?
- Does getting an additional training affect the salaries of managers?

In order to run paired t-test we will simply need to use our one-sample t-test from chapter 3.4.

Recall from the lecture, that pared t-test requires construction of a new variable which will be the difference of two observations per subject, and then testing whether the mean of this new variable is significantly different from zero.

`@instructions`
- Perform the paired t-test
- What does the result you see imply?

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# importing the libraries
import numpy as np
from statsmodels.stats.weightstats import DescrStatsW as smstat

# Let's create our dataset.
# Create numpy array with weights of our pacients before the treatment
before = np.array([82.0, 90.2, 92.7, 113, 101.4, 96.9, 72.2, 85.5, 105.2, 93.7])

# [DIY] Create numpy array (called "after") with weights of the pacients after the treatment with following values 392.9, 393.2, 345.1, 393, 434, 427.9, 422, 383.9, 392.3, 352.2

# Notice that the order of the patients should be the same across two arrais!

# [DIY] create the numpy array (called "difference") that would calculate the difference in weights between before and after treatment for each patient (by subtracting weights before treatment from those after the treatment)

# [DIY] Perform a two sided paired t-test between weights before and after

# [DIY] Test whether we have any statistical evidence that patients loose weight after treatment

```

`@solution`
```{python}
# importing the libraries
import numpy as np
from statsmodels.stats.weightstats import DescrStatsW as smstat

# Let's create our dataset.
# Create numpy array with weights of our pacients before the treatment
before = np.array([82.0, 90.2, 92.7, 113, 101.4, 96.9, 72.2, 85.5, 105.2, 93.7])

# [DIY] Create numpy array (called "after") with weights of the pacients after the treatment with following values 392.9, 393.2, 345.1, 393, 434, 427.9, 422, 383.9, 392.3, 352.2
after = np.array([80.9, 91.2, 85.1, 103, 102, 97.9, 72, 83.9, 92.3, 92.2])

# Notice that the order of the patients should be the same across two arrais.

# [DIY] create the numpy array (called "difference") that would calculate the difference in weights between before and after treatment for each patient (by subtracting weights before treatment from those after the treatment)
difference = after - before

# [DIY] Perform a two sided paired t-test between weights before and after
smstat(difference).ttest_mean(0)

# [DIY] Test whether we have any statistical evidence that patients loose weight after treatment
smstat(difference).ttest_mean(0, alternative="smaller")
```

`@sct`
```{python}

```
