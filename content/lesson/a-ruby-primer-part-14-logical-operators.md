+++
title = "A Ruby Primer, Part 14 -- Logical operators"
date = "2014-07-07"
description = "Evaluating logic with Ruby."
draft = false
tags = ["Development", "Ruby", "Logical", "Operators", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Logic in Ruby

Ruby provides the standard logic operators of 'and', 'or', and 'not' through the logical operators 'and', 'or', and 'not' (or if you prefer C-style, '&&', '||', and '!'), respectively.

The logical operator 'and' is true if, and only if, both relational (comparison) operators are true. Any other combination is false.

The logical operator 'or' is false if, and only if, both relational (comparison) operators are false. Any other combination is true.

The logical operator 'not' negates the truth value of a relational (comparison) operator (e.g. not true is false, and not false is true).

From IRB, let's see the logical operators in action. (Note: We will set up some variables for use in our example.)

``` irb Logical operators
irb(main):001> wage = 10
=> 10
irb(main):002> hours = 40
=> 40
irb(main):003> wage == 10 and hours == 40
=> true
irb(main):004> wage < 10 and hours == 40
=> false
irb(main):005> wage == 10 && hours == 40
=> true
irb(main):006> wage == 10 or hours < 40
=> true
irb(main):007> wage < 10 or hours == 40
=> true
irb(main):008> wage < 10 || hours == 40
=> true
irb(main):009> not true
=> false
irb(main):010> not false
=> true
irb(main):011> not wage == 10
=> false
irb(main):012> !wage == 10
=> false
```

Congratulations! You have learned about relational operators.

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
