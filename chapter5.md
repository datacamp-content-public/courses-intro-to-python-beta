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

Out of sample prediction or predictive modeling is a backbone of data science in which we use statistics to model a behavior using the information already provided to be able to predict the future behaviors. Different from descriptive modeling, in predictive modeling we do not model based on full subset of data because our model may suffer from overfitting and will not be able to make correct predictions.
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
