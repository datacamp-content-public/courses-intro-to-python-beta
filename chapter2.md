---
title: 'Data and visualizatoin'
description: 'Introduction to NumPy, Pandas and simple plots'
---

## Introduction

```yaml
type: NormalExercise
key: a8747afde6
xp: 100
```

The bare bone of Python data science ecosystem is NumPy array. Thinks of this, and other tools, as procedures already pre-programmed for your use in Python. even though they might not be the most user-friendly pieces of software, they are definitely very powerful and versatile tools.

Other similar tools that you might have heard of (like Pandas, Matplotlib, Scikit-learn) are all based and built on NumPy arrays. That's why, understanding the functionality of NumPy is crucial.

In order to use the functionality of NumPy one need to import it. In order to import NumPy you need to use the `import` keyword.
```
import numpy as np
```
As you notice, we imported NumPy as **np**. **np** here is an alias we gave to NumPy so that we don't have to write **numpy** every time we want to use this tool.

Here are some generally accepted aliases that you may come across frequently (we'll discuss their functionalities in later chapters):
1. Numpy - np
2. Pandas - pd
3. Matplotlib.pyplot - plt
4. Seaborn - sns

From here on, we will use these aliases where possible.

`@instructions`
Import NumPy and give it an alias **np**.

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

NumPy arrays are much like Python lists, but different from lists, they are very efficient in numerical calculations.

`np.array()` is the main function to create or convert existing data to a NumPy array (hereafter array). Notice that this function will only work if you have imported NumPy with alias `np`.

Arrays support all kinds of calculations including addition, division, subtraction, multiplication, transformation and etc.

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

# Creating a NumPy array
a = np.array([1, 2, 3, 4])

# Adding 4 to each element
a + 4

# [DIY] Subtract 4 from each element


# Multiplying each element by 2
a * 2

# [DIY] Dividing each element by 2

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

Pandas is a tool that allow you to old whole datasets (organized as spreadsheets) as separate objects. They are referred to as Data Frames.

Pandas data frames consist of NumPy arrays which also have variable names (columns) and observation indexes (rows) attached to them.

`pd.DataFrame()` is the main function to create (or convert existing data to) a pandas data frame object. Pandas data frame as very useful special functionalities (that NumPy does not have), like querying, merging, summarizing, data reading, (some) plotting etc.

Indexing a data frame is similar to indexing a list. Instead of a number, you can use column name as an index in squared brackets like `dataframe["column_name"]` (or, alternatively, `dataframe.column_name`). If you refer a column which does not exist and assign a value(s) to it, then this column will be automatically created with given value(s).

To create new columns in data frame (i.e. variables), you can use already existing columns along with custom values and desired operations.

Once you have your pandas data frame, you can apply a long list of readily-coded functions to your data, by referring to them as `dataframe.function()`, or as `dataframe["column_name"].function()`.

`@instructions`
1. Create an array of sales [10, 11, 23, 42, 12]
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


# Create a list of departments in your company
departments = ["First", "Second", "Third", "Fourth", "Fifth"]

# [DIY] Create a NumPy array named sales with values 10, 11, 23, 42, 12
sales = np.array([10, 11, 23, 42, 12])

# Create a pandas dataframe. Pandas works with both Python and plain NumPy data types.
df = pd.DataFrame({"dept" : departments, "sales": sales})

# Now we can apply Pandas functions to our data.
# Calculate the minimum of sales variable (i.e. sales made by the department who achieved least sales)
print(df.sales.min())

# [DIY] Calculate the maximum of sales variable


# We can also calculate total sales
print(df["sales"].sum())

# Create a column named bonus_pct and assign 0.1 to it
df["bonus_pct"] = 0.1
# notice that as you are adding this column to our data frame, it will have the length of the data frame itself
# The length of our data frame is 5 (we have five departments). Then above assignment will assign 0.1 to each of these five entries

# Now we can use this new variable (which technically is a constant, as it does not vary across the entries) to create further variables
# Create a new variable/column "bonus" which is the multiplication of sales and bonus_pct
df["bonus"] = df["sales"] * df["bonus_pct"]

# Print the dataframe
print(df)

# [DIY] Find the total amount of bonuses


# We can also calculate the summary statistics of all numeric variables in the data frame
print(df.describe())
```

`@solution`
```{python}
# Importing the packages
import pandas as pd
import numpy as np


# Create a list of departments in your company
departments = ["First", "Second", "Third", "Fourth", "Fifth"]

# [DIY] Create a NumPy array named sales with values 10, 11, 23, 42, 12
sales = np.array([10, 11, 23, 42, 12])

# Create a pandas dataframe. Pandas works with both Python and plain NumPy data types.
df = pd.DataFrame({"dept" : departments, "sales": sales})

# Now we can apply Pandas functions to our data.
# Calculate the minimum of sales variable (i.e. sales made by the department who achieved least sales)
print(df.sales.min())

# [DIY] Calculate the maximum of sales variable
print(df["sales"].max())

# We can also calculate total sales
print(df["sales"].sum())

# Create a column named bonus_pct and assign 0.1 to it
df["bonus_pct"] = 0.1
# notice that as you are adding this column to our data frame, it will have the length of the data frame itself
# The length of our data frame is 5 (we have five departments). Then above assignment will assign 0.1 to each of these five entries

# Now we can use this new variable (which technically is a constant, as it does not vary across the entries) to create further variables
# Create a new variable/column "bonus" which is the multiplication of sales and bonus_pct
df["bonus"] = df["sales"] * df["bonus_pct"]

# Print the dataframe
print(df)

# [DIY] Find the total amount of bonuses
print(df["bonus"].sum())

# We can also calculate the summary statistics of all numeric variables in the data frame
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

Data visualization is the process of converting raw data into easily understandable pictorial representations, that support analytics and enable fast and effective decision-making.

Data visualization is a strategy where we represent the quantitative information in a graphical form. The key points of data visualization are:
- Data visualization is the first step of analysis work.
- It gives intuitive understanding of data.
- Helps you to see data in certain meaningful patterns.

Python has a number of visualization libraries. There are both low and high level tools that give you different levels of control over what you do.

We will use `seaborn` package to do the plotting. It uses `matplotlib` library in its core. That's why, almost every time you should import them together.

```
import seaborn as sns	  			  # seaborn alias
import matplotlib.pyplot as plt		# matplotlib alias
```

`@instructions`
1. Create a histogram plot.

`@hint`
Use `sns.distplot()` for plotting a frequency distribution.

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Importing seaborn, numpy and matplotlib
import seaborn as sns
import numpy as np
import matplotlib.pyplot as plt


# Create a NumPy array of values
x = np.array([1,4,3,5,5,6,3,6,3,5,3,5,1,5,1,6,3,4,6])

# Plot the (scaled) histogram (i.e. relative frequency distribution) of x
sns.distplot(x)
# Notice that at this point the plot has been generated, but you do not see it.
# In order to see it, you have to ask Python to show.
plt.show()

# Notice that seaborn distplot also plots a kernel density estimate (sort of an extrapolation of what the frequency distribution of your population might look like, based on the sample that you are working with)
# To plot only a histogram (not scaled, i.e. absolute frequency distribution) you have to tell seaborn not to include kernel density estimate default option
sns.distplot(x, kde=False)
plt.show()

# However, as you see, instead of generating a new plot, seaborn just added the new plot to the old one.
# Sometimes this is very useful. Other times it is not.
# In order for this not to happen, you have to clear the previous plot by using
plt.clf()
# before plotting again (Don't worry if you still see the plot, it is gone from Python's working memory).
sns.distplot(x, kde=False)
plt.show()

# [DIY] Create another array named "y" containing following values: 1,4,1,1,5,4,6,5,4,4,2,6,3,3,2,3,1,5,2.

# [DIY] Clear the previous plot

# [DIY] Plot (create and display) the histogram of y



# [DIY] Add the histogram of variable x to the previous (don't forget to ask Python to show it to you!)


```

`@solution`
```{python}
# Importing seaborn, numpy and matplotlib
import seaborn as sns
import numpy as np
import matplotlib.pyplot as plt


# Create a NumPy array of values
x = np.array([1,4,3,5,5,6,3,6,3,5,3,5,1,5,1,6,3,4,6])

# Plot the (scaled) histogram (i.e. relative frequency distribution) of x
sns.distplot(x)
# Notice that at this point the plot has been generated, but you do not see it.
# In order to see it, you have to ask Python to show.
plt.show()

# Notice that seaborn distplot also plots a kernel density estimate (sort of an extrapolation of what the frequency distribution of your population might look like, based on the sample that you are working with)
# To plot only a histogram (not scaled, i.e. absolute frequency distribution) you have to tell seaborn not to include kernel density estimate default option
sns.distplot(x, kde=False)
plt.show()

# However, as you see, instead of generating a new plot, seaborn just added the new plot to the old one.
# Sometimes this is very useful. Other times it is not.
# In order for this not to happen, you have to clear the previous plot by using
plt.clf()
# before plotting again (Don't worry if you still see the plot, it is gone from Python's working memory).
sns.distplot(x, kde=False)
plt.show()

# [DIY] Create another array named "y" containing following values: 1,4,1,1,5,4,6,5,4,4,2,6,3,3,2,3,1,5,2.
y = np.array([1,4,1,1,5,4,6,5,4,4,2,6,3,3,2,3,1,5,2])
# [DIY] Clear the previous plot
plt.clf()
# [DIY] Plot (create and display) the histogram of y
sns.distplot(y, kde=False)
plt.show()

# [DIY] Add the histogram of variable x to the previous
sns.distplot(x, kde=False)
plt.show()
```

`@sct`
```{python}
Ex().check_object('y').has_equal_value()
Ex().check_function("seaborn.distplot").has_equal_output()
success_msg("Good job!")
```
