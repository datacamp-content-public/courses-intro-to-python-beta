---
title: 'Out of sample prediction'
description: 'Out of sample prediction with Python'
---

## Introduction

```yaml
type: NormalExercise
key: dbc917f41c
xp: 100
```

Out of sample prediction (predictive modeling hereafter) is a backbone of data science in which we use statistics to model a behavior using the information already provided to be able to predict the future behaviors. Different from descriptive modeling, in predictive modeling we do not model based on full subset of data because our model may suffer from overfitting and will not be able to make correct predictions.
The main workflow of predictive modeling looks as follows:
- Loading the data
- Running exploratory analysis
- Splitting the data into training and test set
- Training the model on train set
- Making predictions on test set
- Measuring the model's performance

Before proceeding to the next chapter, lets refresh what we have learned so far in couple of lines of code.



`@instructions`
1. Import libraries numpy, seaborn and matplotlib.pyplot
2. Print out the first rows of the dataset

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Import pandas
import pandas as pd

# [DIY] Import numpy, seaborn, matplotlib.plot
# with their conventional aliases



# Load the dataset. This is mtcars dataset
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# [DIY] Print out the first rows of dataset
              
             
                 
               
```

`@solution`
```{python}
# Import pandas
import pandas as pd

# [DIY] Import numpy, seaborn, matplotlib.plot
# with their conventional aliases
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

# Load the dataset. This is mtcars dataset
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# [DIY] Print out the first rows of dataset
print(df.head())            
             
                 
               
```

`@sct`
```{python}

```

---

## Splitting the dataset

```yaml
type: NormalExercise
key: 69d28aa494
xp: 100
```

Splitting the dataset is the first step towards predictive modeling. The proportion of training and test dataset sizes can be different depending on task and a domain, but most common ones are 75/25 and 80/20.

In order to split our dataset, we will use the powerful `sklearn` package. It has a special function `train_test_split`. It works with numpy arrays, dataframes, and python lists very well. Depending on input, it either outputs train and test chunks, or if user wants more control, it can also output training and test sets for `X` and `y` variables. Typical usage is below. Notice how we use `train_size` argument to tell the function that we want 75/25 split.
```
train, test = train_test_split(dataframe, train_size = 0.75)
X_train, X_test, y_train, y_test = train_test_split(X, y, train_size = 0.75)
```

`@instructions`
Split the numpy array into 80/20 training set

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Importing the libraries
import pandas as pd
import numpy as np
from sklearn.model_seletcion import train_test_split

# Create the dataframe
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Splitting the dataframe into train and test chunks 75/25
train_chunk, test_chunk = train_test_split(df, train_size = 0.75)

# [DIY] Create a numpy array with these values
# 1, 2, 3, 4, 5, 6, 7, 8, 9, 10


# [DIY] Split this array into training and test chunks 80/20
# and name them train_a, test_a


```

`@solution`
```{python}
# Importing the libraries
import pandas as pd
import numpy as np
from sklearn.model_seletcion import train_test_split

# Create the dataframe
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Splitting the dataframe into train and test chunks 75/25
train_chunk, test_chunk = train_test_split(df, train_size = 0.75)

# [DIY] Create a numpy array named A with these values
# 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
A = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

# [DIY] Split this array into training and test chunks 80/20
# and name them train_a, test_a
train_a, test_a = train_test_split(A, train_size = 0.8)

```

`@sct`
```{python}

```

---

## Modeling

```yaml
type: NormalExercise
key: c3d20dceba
xp: 100
```

It is now time to combine everything learned before and proceed to predictive modeling part. Our workflow will be as follows:
- Generate a synthetic classification dataset with two classes
- Look at the data
- Split the dataset into training and test parts
- Fit the logit model using the training set
- Predict the test set

In order to generate our classification dataset we will use `make_blobs` function from `sklearn.datasets`. It will generate `X` and `y` values for our model. Then we will use `seaborn.scatterplot` to look at the generated samples and see visually how they are separated. After that, we will use `train_test_split` and split the data. Modeling and prediction will be done using `Logit` from `statsmodels`.

`@instructions`


`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Loading the libraries
from sklearn.datasets import make_blobs
from sklearn.model_selection import train_test_split
import statsmodels.api as sm
import seaborn as sns
import matplotlib.pyplot as plt

# Generating our dataset using the following paramters
# centers - how many classes we want to generate
# n_features - number of exogenous variables
# random_state - for reproducability
# cluster_std - overlapping of cluster centers
X, y = make_blobs(n_samples= 100, centers= 2, 
                   n_features= 2, random_state= 1, 
                   cluster_std= 3)
  
# Lets look at our data
# hue - allows us to color points based on y
sns.scatterplot(X[:, 0], X[:, 1], hue = y)
plt.show()

# [DIY] Split the dataset into training and test X and y values
# 75/25. Names of variables should be
# X_train, X_test, y_train, y_test


# [DIY] Create and then fit the model on training X and y using sm.Logit
# pay attention to arguments, endogenous variable comes first!
model = 

# Make predictions using test set
y_pred = model.predict(X_test)
```

`@solution`
```{python}
# Loading the libraries
from sklearn.datasets import make_blobs
from sklearn.model_selection import train_test_split
import statsmodels.api as sm
import seaborn as sns
import matplotlib.pyplot as plt

# Generating our dataset using the following paramters
# centers - how many classes we want to generate
# n_features - number of exogenous variables
# random_state - for reproducability
# cluster_std - overlapping of cluster centers
X, y = make_blobs(n_samples= 100, centers= 2, 
                   n_features= 2, random_state= 1, 
                   cluster_std= 3)
  
# Lets look at our data
# hue - allows us to color points based on y
sns.scatterplot(X[:, 0], X[:, 1], hue = y)
plt.show()

# [DIY] Split the dataset into training and test X and y values
# 75/25. Names of variables should be
# X_train, X_test, y_train, y_test
X_train, X_test, y_train, y_test = train_test_split(X, y, train_size = 0.75)

# [DIY] Create and then fit the model on training X and y using sm.Logit
# pay attention to arguments, endogenous variable comes first!
model = sm.Logit(y_train, X_train).fit()

# Make predictions using test set
y_pred = model.predict(X_test)
```

`@sct`
```{python}

```
