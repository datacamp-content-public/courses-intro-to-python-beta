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

Out of sample prediction (predictive modeling hereafter) is a backbone of data science in which we use statistics to model a behavior using the information already provided to be able to predict the unobservable (possible future) behavior. Different from descriptive modeling, in predictive modeling we do not model our dependent variable based on full subset of data. We save a part of our data to evaluate how well our model can predict unobserved behavior.
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

In order to split our dataset, we will use the powerful `sklearn` package. It has a special function `train_test_split`. It works with numpy arrays, dataframes, and python lists very well. Depending on input, it either outputs train and test chunks, or if user wants more control, it can also output training and test sets for multiple variables at the same time Typical usage is below. Notice how we use `train_size` argument to tell the function that we want 75/25 split.
```
train, test = train_test_split(dataframe, train_size = 0.75)
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
from sklearn.model_selection import train_test_split as tts

# Import data into a dataframe
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Randomly splitting the dataframe into train and test chunks 75/25
train_chunk, test_chunk = tts(df, train_size = 0.75)
# Note that we do not need to specify 25% once we specify 75!

# [DIY] Create a numpy array (named "A") with these values 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

# [DIY] Split this array into training and test chunks 80/20 (and name them "train_a" and "test_a")

# [DIY] Visualize the test dataset

```

`@solution`
```{python}
# Importing the libraries
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split as tts

# Import data into a dataframe
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Randomly splitting the dataframe into train and test chunks 75/25
train_chunk, test_chunk = tts(df, train_size = 0.75)
# Note that we do not need to specify 25% once we specify 75!

# [DIY] Create a numpy array (named "A") with these values 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
A = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

# [DIY] Split this array into training and test chunks 80/20 (and name them "train_a" and "test_a")
train_a, test_a = tts(A, train_size = 0.8)

# [DIY] Visualize the test dataset
test_a
```

`@sct`
```{python}

```

---

## Modeling and evaluation

```yaml
type: NormalExercise
key: c3d20dceba
xp: 100
```

It is now time to combine everything learned before and proceed to predictive modeling part. Our workflow will be as follows:
- Load data
- Split the dataset into training and test parts
- Fit the (Logit) model using the training set
- Predict the test set
- Evaluate the results

First we will load our data, `mtcars`, in this example and define our `y` (our dependent variable) and `X` (a set of independent variables). After that, we will use `train_test_split` and split our dataset. Modeling and prediction will be done using `Logit` from `statsmodels`.

After making predictions, the next necessary step is to measure the performance of the model. Depending on the task type, different measurements should be used. For OLS regression, it would be sum of squared errors for example. In this example we have a binary classification problem (our dependent variable is a 1/0 variable). There are a number of metrics which is used in evaluation of such problems:
- Confusion matrix
- Roc-auc score
- Accuracy
- etc.

In this case we will go with confusion matrix. Confusion matrix is ideal for binary classification problems because of its simplicity. Row-wise it shows the count of actual 1s and 0s in our test dataset, and column-wise it shows predicted 1s and 0s from our model. Look at this table of results of a model:
Names| Predicted 1| Predicted 0
:-----:|:-----:|:-----:
True 1| 100 | 12 
True 0| 8 | 432 

Here the model performed fairly well. It made only 20 mistakes while classifying 532 entries correctly.

For generating the confusion matrix we will use `confusion_matrix` from `sklearn.metrics`.

`@instructions`
1. Split the dataset into training and test (X and y)
2. Fit the Logit model
3. Print out the confusion matrix
4. What the results you see imply?

`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Loading the libraries
from sklearn.model_selection import train_test_split as tts
from sklearn.metrics import confusion_matrix as cnfm
import statsmodels.api as sm
import pandas as pd
import numpy as np

# Load the data. We will use mtcars dataset from the logistic regression exercise
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Our dependent variable be am (automatic transmission) - this is our y
y = df["am"]
# Our independent variables will be cyl (cylinder count) and hp (horseoiwer) - this is our X. As we can have more than one independent variables (like in this case, we capitalize X, this is a standard matrix notation)
X = df[["cyl", "hp"]]

# Splitting the dataset into training and test X and y values with 70% of data used as training set.
X_train, X_test, y_train, y_test = tts(X, y, train_size = 0.7)

# Fitting the model on training data using sm.Logit. Notice that this method uses different syntax for fitting the logistic model than one we used in chapter 4.4
model = sm.Logit(y_train, X_train).fit()

# Create a new variable and load it with predicted values using the estimated model
y_pred = model.predict(X_test)

# Print the predicted values of our model
y_pred

# As you see, logistic model delivers a value between 0 and 1 which can be viewed as a probability that a current observation is equalto 1.
# For confusion matrix, we need our predictions to be strictly either 0 or 1.
# So, we have to convert them using some theshold. Selecting a threshold involves thorough deliberations, but let's use 0.4 here.
# Using neat numpy trick here, the command bellow converts everything below a specified threshold  to 0 and everything above it to 1.
y_pred = (y_pred > 0.4).astype(int)

# [DIY] Now look at predicted values

# [DIY] Display the confusion matrix of the model: google the syntax for confusion_matrix routine and take into account the alias that we have given to it. Recall the true values for y are stored in y_test

# [DIY] Once you have completed this exercise and successfully displayed the confussion matrix, re-run the whole exercise. Did you get a different confusion matrix? [If not, re-wrinte it again]. Ask yourself -- how is it possible that you get a different confusion matrix for different runs?! 
```

`@solution`
```{python}
# Loading the libraries
from sklearn.model_selection import train_test_split as tts
from sklearn.metrics import confusion_matrix as cnfm
import statsmodels.api as sm
import pandas as pd
import numpy as np

# Load the data. We will use mtcars dataset from the logistic regression exercise
df = pd.read_csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")

# Our dependent variable be am (automatic transmission) - this is our y
y = df["am"]
# Our independent variables will be cyl (cylinder count) and hp (horseoiwer) - this is our X. As we can have more than one independent variables (like in this case, we capitalize X, this is a standard matrix notation)
X = df[["cyl", "hp"]]

# Splitting the dataset into training and test X and y values with 70% of data used as training set.
X_train, X_test, y_train, y_test = tts(X, y, train_size = 0.7)

# Fitting the model on training data using sm.Logit. Notice that this method uses different syntax for fitting the logistic model than one we used in chapter 4.4
model = sm.Logit(y_train, X_train).fit()

# Create a new variable and load it with predicted values using the estimated model
y_pred = model.predict(X_test)

# Print the predicted values of our model
y_pred

# As you see, logistic model delivers a value between 0 and 1 which can be viewed as a probability that a current observation is equalto 1.
# For confusion matrix, we need our predictions to be strictly either 0 or 1.
# So, we have to convert them using some theshold. Selecting a threshold involves thorough deliberations, but let's use 0.4 here.
# Using neat numpy trick here, the command bellow converts everything below a specified threshold  to 0 and everything above it to 1.
y_pred = (y_pred > 0.4).astype(int)

# [DIY] Now look at predicted values
y_pred

# [DIY] Display the confusion matrix of the model: google the syntax for confusion_matrix routine and take into account the alias that we have given to it. Recall the true values for y are stored in y_test
cnfm(y_test, y_pred)

# [DIY] Once you have completed this exercise and successfully displayed the confussion matrix, re-run the whole exercise. Did you get a different confusion matrix? [If not, re-wrinte it again]. Ask yourself -- how is it possible that you get a different confusion matrix for different runs?! 
```

`@sct`
```{python}

```

---

## Misc. Cross- validation

```yaml
type: NormalExercise
key: 2c476fc269
xp: 100
```

Cross-Validation is the process of assessing how the results of a statistical analysis will generalize to an independent dataset.
In a prediction problem, a model is usually given a dataset of known data on which training is run (training dataset), and a dataset of unknown data (or first seen data) against which the model is tested (called the validation dataset or testing set). The goal of cross-validation is to define a dataset to “test” the model in the training phase (i.e., the validation set), in order to limit problems like overfitting, give an insight on how the model will generalize to an independent dataset.There are many cross-validation techniques and each technique has its own use-case. Here are some of them:

- Holdout. This is the simplest technique in which we simply remove some random samples from our training set and use it evaluate the training phase. It does not have any additional computational costs because of its simplicity.
- K-fold. When we do not have enough data, even removing a small sample from training set may result in losing important patterns and thus high error in prediction phase. Data is divided into K number of folds and training is done on K-1 and testing on the remaining fold. This process is redone until each fold is used in testing phase.
- Stratified K-fold. When there is a strong imbalance in data, splitting it randomly may not be the best option. In stratified K-fold data is split evenly as possible based on class imbalance. So, as a result we get almost the same proportion of classes in every fold.
- Leave one out. Similar to K-fold, but it is done not on fold level, but on sample level. Having N samples, every time only one sample will be used in testing and N-1 on training. Suitable when having a small dataset. 
- Leave p out. Similar to leave one out, but instead of leaving one sample, we leave p samples out. Training is done on N-p samples, while testing is done on p samples.

This exercise does not have any tasks to complete by students and is for information purposes.

`@instructions`


`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Nothing here
```

`@solution`
```{python}

```

`@sct`
```{python}

```
