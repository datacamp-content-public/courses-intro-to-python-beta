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
In order to make your code more understandable to yourself and others, you can use comments, explanations.`#` symbol indicates the start of a comment line. This line is simply ignored by the machine.
You can also write more substantial comments over multiple lines. For this you should use triple quotation marks  as `"""Comment that can be in multiple lines"""`. However, in this case you will also need to indicate the end of the comment, again by using triple quotes.

For each chapter, you will have a part of the script that is already developed, and a part that requires your input. The latter parts will be explicitly marked with `[DIY]` [i.e. Do It Youself!]. It is imperative that you develop these parts of the code before submitting your answer for the chapter.

To pre-test your solutions, you can use "Run Code" button. Python output, including problems with your code, will be displayed in IPython Shell window bellow the script.

Note that you can also write commands directly in the shell and execute them by clicking enter, but these will not be saved for your future reference.

Once you are happy with results delivered by your script in the editor (script.py), you can submit your code via "Submit Answer" button.

`@instructions`
Make the text in black a one line comment

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
This text should be a one line comment

```

`@solution`
```{python}
#This text should be a one line comment
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

Arithmetic operations in Python are pretty much the same as in other mathematical tools and have the same meaning.

In order to promote a good habit of coding, from now on we will extensively use comments in the script to communicate the nature of the exercise.

Please concentrate on the script.py window, understand parts of already developed code and carry out every task that is marked by `[DIY]` before submitting your solution.

Notice that depending on your machine setup, you might not be readily seeing the whole script of the exercise. Just scroll down within the script window to make sure you read it to the end.

`@instructions`
For the rest of the chapter, we will be using comments in the script to give you instructions.

THerefore, we will be ignoring this "Instructions" space. As well as hints that you see bellow.

`@hint`
Another method for finding square root is to raise a number to the power of 0.5.

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# + denotes edition of two operands x + y, - denotes the subtraction of the right operand from the left one x - y
5+6
7-3

# * denotes multiplication x * y, ** denotes exponentiation (left operand raised to the power of right) x**y (x to the power y)

#[DIY] 6 times 7

#[DIY] 5 to the power of 4

# You can also use print() function to display the corresponding output.

# Print the outcome of raising 6 into the power of 0.7
print(6**0.7)

#[DIY] Print the square root of 10


```

`@solution`
```{python}
# + denotes edition of two operands x + y, - denotes the subtraction of the right operand from the left one x - y
5+6
7-3

# * denotes multiplication x * y, ** denotes exponentiation (left operand raised to the power of right) x**y (x to the power y)

#[DIY] 6 times 7
6*7
#[DIY] 5 to the power of 4
5**4
# You can also use print() function to display the corresponding output.

# Print the outcome of raising 6 into the power of 0.7
print(6**0.7)

#[DIY] Print the square root of 10
print(10**(1/2))

```

`@sct`
```{python}
Ex().has_output('3.1622776601683795')
success_msg('Good job! Next to the other exercise!')
```

---

## Variables

```yaml
type: NormalExercise
key: 865df8eb11
xp: 100
```

Variables can be understood as containers where we can store our data.

Unlike other programming languages, there is no special keyword to declare a variable in Python.

As soon as you assign some value to a new handle, the variable by the name of that handle is created. You can (should) use `=` sign for assignment.

Python is a flexible language. You can assign many things to a variable, not only numeric values (i.e. data). For example, operations, functions, processes, images and whole datasets can be assigned to a variable in Python.

`@instructions`
Create a few variables.

`@hint`
`+` operator is used for addition
`=` operator is used for assignment
`print()` is used for printing to the console

`@pre_exercise_code`
```{python}


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
# Define a variable x and assign the value 3 to it
x = 3
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

numerics (`int`, `float`) - these are values like 3 and 4.123. Notice that 3 is an integer, wile 4.123 is not. It is a fraction, which is referred to in Python as `float`. Bear in mind that Python treats `int` and `float` differently. 

strings (`str`) - these are textual values like “dog” and “cat”, "453". Did you notice how we made a number (technically an integer) 453 a string? In order to cast something as `str` we add quotation marks around it `" "`. 

boolean (`bool`) - these are booleans that take only two values: `True`, `False`. They are used to evaluate correctness of certain expressions.

Notice that Python can work with data of different types. However, you have to keep in mind the type of every data in order not to ask Python compute something you did not intend to.

You can check the type of any data using `type()` function.

`@instructions`
Define numeric, string and Boolean variables.

`@hint`
1. Use built-in `type()` function to check for the variable type
2. Use built-in `print()` function to print something to the console

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Define a variable x and assign 3.14 to it
x = 3.14

# Define a variable c and assign "Text" to it
c = "Text"

# Define a variable e and assign False to it
e = False

# Check the type of c and print it out
print(type(c))

# Check the type of e and print it out
print(type(e))

# [DIY] define another numeric variable y and assign 2 to it

# [DIY] define a string variable s and assign "Python" to it

# [DIY] define a Boolean variable z and assign True to it

# [DIY] check the type of x + y by printing its type into the console


```

`@solution`
```{python}
# Define a numeric variable x and assign 3.14 to it
x = 3.14

# Define a variable c and assign "Text" to it
c = "Text"

# Define a variable e and assign False to it
e = False

# Check the type of c and print it out
print(type(c))

# Check the type of e and print it out
print(type(e))

# [DIY] define another numeric variable y and assign 2 to it
y = 2
# [DIY] define a string variable s and assign "Python" to it
s = "Python"
# [DIY] define a Boolean variable z and assign True to it
z = True
# [DIY] check the type of x + y by printing its type into the console
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

Apart from simple data types, Python also has some complex types of data which serve as "containers" for simple data types. For example, lists.

Lists are like vectors, or arrays in other languages. A list is a collection of items (elements) which is **changeable**. In Python lists are written with squared brackets.`[]`. They can contain elements of different types.
```
a = [1, 2.0, "Python", True]
```

`@instructions`
1. Create a list `a` which contains an integer, boolean and a string in this order.
2. Print the type of the 2nd element of `a`.

`@hint`
- Python is zero indexed language.
- For indexing, squared brackets are used.

`@pre_exercise_code`
```{python}
def sanity_check_list(obj):
  return type(obj) == list and len(obj) == 3 and type(obj[0]) == int and type(obj[1]) == bool and type(obj[2]) == str

```

`@sample_code`
```{python}
# Some sample list for reference
b = ["string", 4, 5.23, False]

# [DIY] Create a list `a` which contains an integer, boolean and a string in this exact order



# This evaluates your work up to this point. Please do not edit the following line
sanity_check_list(a)

# [DIY] Print the type of the 2nd element of `a`


```

`@solution`
```{python}
# Some sample list for reference
b = ["string", 4, 5.23, False]

# [DIY] Create a list `a` which contains an integer, boolean and a string in this exact order
a = [2, True, "A"]

# This evaluates your work up to this point. Please do not edit the following line
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

Function is a block of code which runs only when called. Main goal of a function is to manipulate inputs and produce an output. Functions in Python are defined with `def` keyword followed by `():` where you can pass your arguments.

In some programming languages function body is written within curly braces, `{}`, but in Python indentation plays an important role. Typical function looks like this:
```python
def function_name(arg1, arg2):

	function body	# this is a function body
    return some_result	# function output should start with return
```
To call that function we will need to use the following syntax:
	`function_name(first_argument, second_argument)`

`@instructions`
1. Create a function `perimeter` which calculates the perimeter of a triangle given sides
2. Create a function `area` which calculates the area of a circle given radius

`@hint`
Use `def` to define a function and do not forget about indentation.

`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}
# Define a custom function adder()

def adder(a, b):		# argument names can be anything
  return a + b

# [DIY] Create (i.e. Define) a function perimeter() which calculates the perimeter of a triangle
# given its sides `a, b, c`

# Checking the function perimeter()
perimeter(3, 4, 5)

# [DIY] Create a function area() which calculates the area of a circle given its radius (and, of course, the value of pi = 3.14)


# Checking the function area
area(3)

```

`@solution`
```{python}
# Define a custom function adder()

def adder(a, b):		# here you are defining new variables as arguments
  return a + b			# here, in the body of the function, you are using those new variables that  you defined as arguments of the function.

# [DIY] Create (i.e. Define) a function perimeter() which calculates the perimeter of a triangle  given its sides `a, b, c`
def perimeter(a, b, c):
  return a + b + c

# Checking the function perimeter()
perimeter(3, 4, 5)

# [DIY] Create a function area() which calculates the area of a circle given radius (and, of course the value of pi=3.14)
def area(r):
  return r ** 2 * 3.14

# Checking the function area
area(3)

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
