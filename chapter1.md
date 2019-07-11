---
title: 'Chapter Title Here'
description: 'Chapter description goes here.'
free_preview: true
---

## Example coding exercise

```yaml
type: NormalExercise
key: e8c1edbe67
lang: python
xp: 100
skills: 2
```

This is an example exercise.

`@instructions`
There are no instructions at this point.


`@hint`


`@pre_exercise_code`
```{python}

```

`@sample_code`
```{python}

```

`@solution`
```{python}

```

`@sct`
```{python}

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
