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

Welcome to the short introductory tutorial for Python. Here is how this tutorial works: 
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

## Simple arithmetics

```yaml
type: NormalExercise
key: 4713f35526
xp: 100
```

Arithmetic operations in Python are pretty much the same as in other mathematical tools and have the same meaning

`@instructions`
With given `x` and `y`, `print()` the followings:
1. `x` to the power of 4
2. Add 5 to `y`
3. Subtract 10 from `x`
4. Square root of `y`
5. Find the difference between `x` and `y`

`@hint`
Another method for finding square root is to increase the number to the power of 1/2

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
x = 5
y = 4
#+	Add two operands or unary plus	x + y, - Subtract right operand from the left or unary minus	x - y
#*	Multiply two operands	x * y, **	Exponent - left operand raised to the power of right	x**y (x to the power y)
#[DIY]
```

`@solution`
```{python}
625
9
-5
2.0
1
```

`@sct`
```{python}
Ex().has_output("625")
Ex().has_output("9")
Ex().has_output("-5")
Ex().has_output("2.0")
Ex().has_output("1")
success_msg('Good job! Next to the other exercise!')
```
