+++
title = "A Ruby Primer, Part 13 – Relational operators"
date = "2014-07-01T21:24:43-04:00"
description = "Performing comparisons with Ruby."
draft = false
tags = ["Development", "Ruby", "Relational", "Operators", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Comparisons in Ruby

As discussed in [Part 7]({{ root_url }}/2014/04/a-ruby-primer-part-7-booleans/) of this primer, Ruby provides the standard boolean values of 'true' and 'false, and the standard relational (comparison) operations of is equal to, is not equal to, is greater than, is less than, is greater than or equal to, is less than or equal to through the relational operators '==', '!=', '>', '<', '>=', and '<=', respectively. Ruby also provides a combined (or general) comparison operator, '<=>', which returns a 0 if the first operand is equal to the second, 1 if the first operand is greater than the second, or -1 if the first operand is less than the second.

From IRB, let's see the relational (comparison) operators in action.

``` irb Relational (comparison) operators
irb(main):001> 1 == 1
=> true
irb(main):002> 2 == 1
=> false
irb(main):003> 1 != 1
=> false
irb(main):004> 2 != 1
=> true
irb(main):005> 1 > 2
=> false
irb(main):006> 2 > 2
=> false
irb(main):007> 3 > 2
=> true
irb(main):008> 1 < 2
=> true
irb(main):009> 2 < 2
=> false
irb(main):010> 3 < 2
=> false
irb(main):011> 1 >= 2
=> false
irb(main):012> 2 >= 2
=> true
irb(main):013> 3 >= 2
=> true
irb(main):014> 1 <= 2
=> true
irb(main):015> 2 <= 2
=> true
irb(main):016> 3 <= 2
=> false
irb(main):017> 1 <=> 2
=> -1
irb(main):018> 2 <=> 2
=> 0
irb(main):019> 3 <=> 2
=> 1
```

Ruby allows us to use the relational (comparison) operators on strings. Keep in mind that string comparisons are case-sensitive, and that letters that come alphabetically before or after their case-sensitive counterpart (e.g. 'a' compared to 'b', or 'B' compared to 'A') are less than or greater than, respectively.

From IRB, let's see the relational (comparison) operators in action on strings.

``` irb Relational (comparison) operators
irb(main):020> "ant" == "ant"
=> true
irb(main):021> "Ant" == "ant"
=> false
irb(main):022> "bear" < "bear"
=> false
irb(main):023> "bear" < "beaver"
=> true
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
