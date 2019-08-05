---
title: 'Introduction to Python'
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

Welcome to the short introductory tutorial for Python.
Here is how this tutorial works: In the editor (in the top right quadrant of the screen) you will be able to write Python code to solve assigned problems.
In order to make your code more understandable to yourself and others, you can use comments, explanations.`#` symbol indicates the start of a line of comment. This line is simply ignored by the machine.
You can also write more substantial comments over multiple lines. For this you should use triple quotation marks  as `"""Comment that can be in multiple lines"""`.
For each chapter, you will have a part of script that is already developed, and part that requires your input. The latter parts will be explicitly marked with `[DIY]`. It is imperative that you develop these parts of the code before submitting your answer for the chapter.
To pre-test your solutions, you can use "Run Code" button. Python output, including problems will be displayed in IPython Shell window bellow the script.
Note that you can also write commands directly in the shell and execute them by clicking enter, but these will not be saved for your future reference.
Once you are happy with results delivered by your script in the editor (script.py), you can submit your code via "Submit Answer" button.

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
Ex().has_code("#*", not_typed_msg="You should have a `#` sign to comment out a line")
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
1. 5 to the power of 4
2. Add 5 to 4
3. Subtract 10 from 5
4. Square root of 4
5. Find the difference between 5 and 4

`@hint`
Another method for finding square root is to increase the number to the power of 0.5

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# +	Add two operands or unary plus	x + y, - Subtract right operand from the left or unary minus	x - y
# *	Multiply two operands	x * y, **	Exponent - left operand raised to the power of right	x**y (x to the power y)

#[DIY] 5 to the power of 4
print()
#[DIY] Add 5 to 4
print()
#[DIY] Subtract 10 from 5
print()
#[DIY] Square root of 4
print()
#[DIY] Find the difference between 5 and 4
print()
```

`@solution`
```{python}
#+	Add two operands or unary plus	x + y, - Subtract right operand from the left or unary minus	x - y
#*	Multiply two operands	x * y, **	Exponent - left operand raised to the power of right	x**y (x to the power y)

#[DIY] 5 to the power of 4
print(5 ** 4)
#[DIY] Add 5 to 4
print(4 + 5)
#[DIY] Subtract 10 from 5
print(5 - 10)
#[DIY] Square root of 4
print(4 ** 0.5)
#[DIY] Find the difference between 5 and 4
print(5 - 4)
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

---

## Variables

```yaml
type: NormalExercise
key: 865df8eb11
xp: 100
```

Variables can be understood as containers which store data in them.
Unlike other programming languages, there is no special keyword to declare a variable.
As soon as you assign some value to it, the variable is created.
Not only values, but also operations, functions, processes can be assigned to a variable.
For assignment `=` sign is used.

`@instructions`
Create the variables

`@hint`
`+` operator is used for addition
`=` operator is used for assignment
`print()` is used for printing to the console

`@pre_exercise_code`
```{python}
x = 3

```

`@sample_code`
```{python}
# Define a variable x and assign the value 3 to it
x = 3
# [DIY] Define a variable y and assign value 5 to it

# [DIY] Define a variable z which is the sum of x and y

# [DIY] Print the variable z to the console
```

`@solution`
```{python}
# [DIY] Define a variable y and assign value 5 to it
y = 5
# [DIY] Define a variable z which is the sum of x and y
z = x + y
# [DIY] Print the variable z to the console
print(z)


```

`@sct`
```{python}
Ex().check_object("x").has_equal_value()
Ex().check_object("y").has_equal_value()
Ex().check_object("z").has_equal_value()
Ex().has_output('8')
success_msg("Good Job!")
```

---

## Simple data types

```yaml
type: NormalExercise
key: 7845e5f574
xp: 100
```

There are three most common data types in Python.

numerics (`int`, `float`) - these are values like 3 and 4.123. Notice that 3 is an integer, wile 4.123 is not. It is a fraction, which is referred in python as `float`. Bear in mind that Python treats `int` and `float` differently. 

strings (`str`) - these are textual values like “dog” and “cat”, "453". Did you notice how we made int 453 a string? In order to cast something as str we add quotation marks around it `" "`. 

boolean (`bool`) - these are booleans that take only two values: `True`, `False`. They are used to evaluate certain expressions.

Notice that Python can work with data of different types. However, you have to keep in mind the type of every data in order not to ask Python compute something you did not intend to.
You can check the type of any data using `type()` function.

`@instructions`
1. Define a string variable s and assign "Python" to it
2. Define a boolean variable z and assign `True` to it
3. Print the type of `x + y`

`@hint`
1. Use built-in `type()` function to check for the variable type
2. Use built-in `print()` function to print something to the console

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# [DIY] define a variable x and assign 3.14 to it
x = 3.14
# [DIY] define a variable y and assign 2 to it
y = 2
# [DIY] define a variable s and assign "Python" to it

# [DIY] define a variable z and assign True to it

# [DIY] print the type of x + y


```

`@solution`
```{python}
# [DIY] define a variable x and assign 3.14 to it
x = 3.14
# [DIY] define a variable y and assign 2 to it
y = 2
# [DIY] define a variable s and assign Python to it
s = "Python"
# [DIY] define a variable z and assign True to it
z = True
# [DIY] print the type of x + y
print(type(x + y))
```

`@sct`
```{python}
Ex().check_object("x").has_equal_value()
Ex().check_object("y").has_equal_value()
Ex().check_object("s").has_equal_value()
Ex().check_object("z").has_equal_value()
Ex().has_output("<class 'float'>")
success_msg("Good Job!")
```

---

## Lists

```yaml
type: NormalExercise
key: 790974df1e
xp: 100
```

Apart from simple data types, Python also has some complex data types which serve as "containers" for simple data types. They are:
1. Lists
2. Tuples
3. Dictionaries

Lists are like vectors in R, or arrays in other languages. A list is a collection which is **changeable**. In Python lists are written with squared brackets.`[]`. They can contain elements of different types.
```
a = [1, 2.0, "Python", True]
```

`@instructions`
1. Create a list `a` which contains an integer, boolean and a string in this order
2. Print the type of the 2nd element of `a`

`@hint`
- Python is zero indexed language
- For indexing, squared brackets are used

`@pre_exercise_code`
```{python}
def sanity_check_list(obj):
  return type(obj) == list and len(obj) == 3 and type(obj[0]) == int and type(obj[1]) == bool and type(obj[2]) == str

```

`@sample_code`
```{python}
# Some sample list for reference
b = ["string", 4, 5.23, False]

# [DIY] Create a list `a` which contains an integer, boolean and a string in this order



# Sanity check. Do not edit these lines
sanity_check_list(a)

# [DIY] Print the type of the 2nd element of `a`


```

`@solution`
```{python}
# Some sample list for reference
b = ["string", 4, 5.23, False]

# [DIY] Create a list `a` which contains an integer, boolean and a string in this order
a = [2, True, "A"]

# Sanity check. Do not edit these lines. If these functions fail, check the variable definitions
sanity_check_list(a)



# [DIY] Print the type of the 2nd element of `a`
print(type(a[1]))


```

`@sct`
```{python}
Ex().check_function("sanity_check_list").has_equal_value()
Ex().has_equal_output("<class 'bool'>")
Ex().has_equal_output("<class 'int'>")
```

---

## Functions

```yaml
type: NormalExercise
key: 32017a34d1
xp: 100
```

Function is a block of code which runs only when called. Main goal of a function is to manipulate the inputs and produce an output (95 % of the time). Functions in Python are defined with `def` keyword followed by `():` where you pass your arguments. In some programming languages function body is written within curly braces, `{}`, but in Python identation plays an important role. Typical function looks like this:
```
def function_name(arg1, arg2):			# function has two arguments. Arg1 and arg2 names are purely arbitrary
	"""
    Explanation what function does, 
    called a docstring. 
    It is advised that 
    every function has one
    """
	function body						# this is function body
    return some_result					# function output which starts with return keyword
```
To call that function we do the following:`function_name(arg1 = first_argument, arg2 = second_argument)`

`@instructions`
1. Create a function `perimeter` which calculates the perimeter of a triangle given sides
2. Create a function `area` which calculates the area of a circle given radius

`@hint`
Use `def` to define a function and do not forget about identation

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Custom function adder()

def adder(a, b):		# argument names can be anything
  return a + b

# [DIY] Create a function perimeter() which calculates the perimeter of a triangle

# Checking the function perimeter()
perimeter(3, 4, 5)

# [DIY] Create a function area() which calculates the area of a circle given radius (pi = 3.14)


# Checking the function area
area(3)

```

`@solution`
```{python}
def perimeter(a, b, c):
  return a + b + c



def area(r):
  return r ** 2 * 3.14


```

`@sct`
```{python}
Ex().check_function_def('perimeter').multi(
    check_call("f(3, 4, 5)").has_equal_value()
)
Ex().check_function_def('area').multi(
    check_call("f(3)").has_equal_value()
)
success_msg("Good Job!")
```
