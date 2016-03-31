+++
title = "A Ruby Primer, Part 11 – Variables and constants"
date = "2014-04-03T12:25:41-04:00"
description = "Exploring variables and constants with Ruby."
draft = false
tags = ["Development", "Ruby", "Variables", "Constants", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Terms
> **Variable:** *A variable is a symbolic name associated with some value, whether known or unknown.* [Wikipedia article](http://en.wikipedia.org/wiki/Variable_(computer_science))
>
> **Constant:** *A constant is a symbolic name associated with some known value, that is not intended to change.* [Wikipedia article](http://en.wikipedia.org/wiki/Constant_(programming))

### Variables in Ruby

Ruby allows us to create variables to store any object available in Ruby. We can name our variable **almost** anything we want, but there are a few rules that we must follow:

- All variables must begin with either a lowercase letter or an underscore ('_').
- After the first letter (or underscore) of a variable, the variable name can only contain letters, numbers, or underscores.

When naming variables, the **proper** standard practice is to use meaningful variable names (e.g. rate instead of r, or publication_date instead of date) that reduce abiguity and confusion for anyone reading your code (yourself included). For complex variable names (e.g. positive_numbers_under_ten), the Ruby convention is to use underscore to separate the words in the complex variable name. (*Note that in other languages, [CamelCase](http://en.wikipedia.org/wiki/CamelCase) is often used. This is purely a convention and stylistic choice of many Ruby programmers. You are free to use either in your own Ruby code.*)

In Ruby, we create a variable through an assignment operation, using the binary operator '='. Ruby is smart enough to figure out what data type the variable should be, so that we do not have to specify a data type when creating a variable.

From IRB, let's see variable creation and assignment in action.

``` irb Variable creation and assignment
irb(main):001:0> letter = "a"
=> "a"
irb(main):002:0> letter
=> "a"
irb(main):003:0> _number = 42
=> 42
irb(main):004:0> _number
=> 42
irb(main):005:0> first_name = "Clark"
=> "Clark"
irb(main):006:0> lastName = "Kent"
=> "Kent"
irb(main):007:0> date_of_first_appearance_of_superman = 1938
=> 1938
```

### Constants in Ruby

Ruby allows us to create constants, by using **all** uppercase letters in the name of our constant (e.g. TAU = 6.28319). (*Note that in Ruby, a constant isn't really constant, and can be changed at a later point in your program. However, the convention in Ruby is that constants should **not** be changed. Ruby will give you a warning when you try to reassign a constant, but will go ahead and do the reassignment anyway.*)

From IRB, let's see constant creation and assignment in action.

``` irb Constant creation and assignment
irb(main):008:0> TAU = 6.28319
=> 6.28319
irb(main):009:0> TAU
=> 6.28319
irb(main):010:0> SITE_NAME = "Disciples of Code"
=> "Disciples of Code"
irb(main):011:0> SITE_NAME
=> "Disciples of Code"
irb(main):012:0> SITE_NAME = "Your Really Awesome Site"
(irb):12: warning: already initializaed constant SITE_NAME
(irb):11: warning: previous definition of SITE_NAME was here
=> "Your Really Awesome Site"
irb(main):013:0> SITE_NAME
=> "Your Really Awesome Site"
```

We will be using variables and constant throughout the rest of this primer.

Congratulations! You have learned about some of the basic ways to create and assign values to variables and constants.

### A Ruby Primer

In [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer, you can learn how to set up your development environment.

In [Part 2]({{ root_url }}/2014/03/a-ruby-primer-part-2-using-the-ruby-interactive-shell-irb/) of this primer, you can explore using the Ruby Interactive Shell (IRB).

In [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer, you can learn how to run Ruby programs (scripts).

In [Part 4]({{ root_url }}/2014/03/a-ruby-primer-part-4-outputting-and-inputting-data/) of this primer, you can learn how to output and input data, as well as how to do simple conversion of strings into integers and floats.

In [Exercise 1]({{ root_url }}/2014/03/a-ruby-primer-exercise-1-a-simple-command-line-calculator/) of this primer, you can learn how to create a simple command line calculator.

In [Part 5]({{ root_url }}/2014/04/a-ruby-primer-part-5-strings/) of this primer, you can learn about strings.

In [Part 6]({{ root_url }}/2014/04/a-ruby-primer-part-6-numbers/) of this primer, you can learn about numbers.

In [Part 7]({{ root_url }}/2014/04/a-ruby-primer-part-7-booleans/) of this primer, you can learn about booleans.

In [Part 8]({{ root_url }}/2014/04/a-ruby-primer-part-8-ranges/) of this primer, you can learn about booleans.

In [Part 9]({{ root_url }}/2014/04/a-ruby-primer-part-9-arrays/) of this primer, you can learn about arrays.

In [Part 10]({{ root_url }}/2014/04/a-ruby-primer-part-10-hashes/) of this primer, you can learn about hashes.

In [Part 11]({{ root_url }}/2014/04/a-ruby-primer-part-11-variables-and-constants/) of this primer, you can learn about variables and constants.

In [Exercise 2]({{ root_url }}/2014/04/a-ruby-primer-exercise-2-a-random-number-min-max-detector/) of this primer, you can learn how to create a program to detect the minimum and maximum values from a collection of randomly generated numbers.

In [Part 12]({{ root_url }}/2014/06/a-ruby-primer-part-12-arithmetic-operators/) of this primer, you can learn about arithmetic operators.

In [Part 13]({{ root_url }}/2014/07/a-ruby-primer-part-13-relational-operators/) of this primer, you can learn about relational operators.

In [Part 14]({{ root_url }}/2014/07/a-ruby-primer-part-14-logical-operators/) of this primer, you can learn about logical operators.
