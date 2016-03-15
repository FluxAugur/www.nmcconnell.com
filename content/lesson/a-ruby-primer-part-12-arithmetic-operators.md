+++
title = "A Ruby Primer, Part 12 -- Arithmetic operators"
date = "2014-06-28"
description = "Performing arithmetic with Ruby."
draft = false
tags = ["Development", "Ruby", "Arithmetic", "Operators", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Arithmetic in Ruby

As discussed in [Part 6]({{ root_url }}/2014/04/a-ruby-primer-part-6-numbers/) of this primer, Ruby provides the standard arithmetic operations of addition, subtraction, multiplication, division, remainder (modulo), and exponention through the binary operators '+', '-', '\*', '/', '%', '\*\*', respectively.

Ruby orders the arithmetic operations just like you would expect. Parentheses can be used to override the standard order of operations.

- Exponentiation ('\*\*')
- Unary plus ('+') and minus ('-')
- Multiplication ('\*'), division ('/'), and modulo ('%')
- Addition ('+') and subtraction ('-')

From IRB, let's see the arithmetic operators in action.

``` irb Arithmetic operators
irb(main):001:0> 1 + 2
=> 3
irb(main):002:0> 12.3 - 4.5
=> 7.8
irb(main):003:0> 123 * 6.28319
=> 772.83237
irb(main):004:0> 42 / 4
=> 10
irb(main):005:0> 42 % 4
=> 2
irb(main):006:0> 2 ** 10
=> 1024
irb(main):007:0> 1 + 2 * 3
=> 7
irb(main):008:0> 1 + 2 ** 3
=> 9
irb(main):009:0> (1 + 2) ** 3
=> 27
```

Congratulations! You have learned about arithmetic operators.

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
