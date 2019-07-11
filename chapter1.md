---
title: 'Chapter 1'
description: 'Introduction to Python'
free_preview: true
---

## Welcome

```yaml
type: NormalExercise
key: e8c1edbe67
lang: python
xp: 100
skills: 2
```

Welcome to the short introductory tutorial for Python. Here is how this tutorial works.
In the editor on the right you should be able to write Python code to solve the exercises.
In order to make your code more understandable to yourself and other people reading it, you can use comments. `#` symbol indicates the start of a line of comment.
There will be some code in exercises for the reference. For the parts that must be filled by you, you will see `[DIY]` above them.
You can execute your code by clicking `Execute` button. If you are pleased with results, you can submit your code via `Submit` button.

`@instructions`
Make the text you see a one line comment

`@hint`
Put `#` at the beginning of a line to comment it out

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# some comment which will be ignored by interpreter

"""
Multi
line
 comment
  that
   is
ignored
"""
# [DIY]
text supposed to be a one line comment
```

`@solution`
```{python}
#text supposed to be a one line comment
```

`@sct`
```{python}
Ex().has_code("#text supposed to be a one line comment", not_typed_msg="You should have a `#` sign to comment out a line")
success_msg("Good job! On to the next exercise")
```

---

## Test Exercise

```yaml
type: NormalExercise
key: 4713f35526
xp: 100
```

Testing exercise in order to see if it is working

`@instructions`
Create a variable a and assign value 30 to it

`@hint`
assignment is '=' sign in python (:= in newest versions)

`@pre_exercise_code`
```{python}
# create a variable a
```

`@sample_code`
```{python}
# none
```

`@solution`
```{python}
a = 30
```

`@sct`
```{python}
Ex().check_object("a").has_equal_value(incorrect_msg = "Foo")
success_msg('Have you created a variable correctly?')
```
