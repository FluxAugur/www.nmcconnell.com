+++
title = "A Ruby Primer, Part 7 -- Booleans"
date = "2014-04-02"
description = "Manipulating booleans and exploring logic with Ruby."
draft = false
tags = ["Development", "Ruby", "Booleans", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Terms
> **Boolean:** *A boolean is a data type intended to represent logical truth values.* [Wikipedia article](http://en.wikipedia.org/wiki/Boolean_data_type)
>
> **Comparison:** *A comparison is an operation that is used to test the inequality of values.* [Wikipedia article](http://en.wikipedia.org/wiki/Inequality_(mathematics))


### Booleans in Ruby

Ruby provides three [boolean literals](http://www.ruby-doc.org/core-2.1.1/doc/syntax/literals_rdoc.html) that we can use when making comparisons or in conditional expressions: `true`, `false`, and `nil`. (*Note that we will discuss conditional expressions later in this primer.*)

- `true` is a true value
- `false` is a false value
- `nil` is a false value and is also used to indicate the absence of data or that the truth value of the data is unknown.

We can assign boolean values to variables, just as we have with [numeric]({{ root_url }}/2014/04/a-ruby-primer-part-6-numbers/) and [string]({{ root_url }}/2014/04/a-ruby-primer-part-5-strings/) values. We can use the unary negation ('!') operator to reverse the truth value of a boolean.

From IRB, let's see booleans in action.

``` irb Boolean literals
irb(main):001:0> true
=> true
irb(main):002:0> false
=> false
irb(main):003:0> nil
=> nil
irb(main):004:0> !true
=> false
irb(main):005:0> !false
=> true
irb(main):006:0> !nil
=> true
irb(main):007:0> flag = true
=> true
irb(main):008:0> flag
=> true
irb(main):009:0> !flag
=> false
```

#### Comparison Operators

Ruby provides the standard comparison operations of 'is equal to', 'is not equal to', 'is greater than', 'is less than', 'is greater than or equal to', and 'is less than or equal to', through the binary operators '==', '!=', '\>', '<', '\>=', and '<=', respectively. There are a few others which we will discuss in later parts of this primer.

From IRB, let's see the comparison operators in action.

``` irb Comparison operators
irb(main):010:0> true == true
=> true
irb(main):011:0> true == false
=> false
irb(main):012:0> true == nil
=> false
irb(main):013:0> false == nil
=> false
irb(main):014:0> true != true
=> false
irb(main):015:0> true != false
=> true
irb(main):016:0> true != nil
=> true
irb(main):017:0> false != nil
=> true
irb(main):018:0> 24 == 42
=> false
irb(main):019:0> 24 != 42
=> true
irb(main):020:0> 24 > 42
=> false
irb(main):021:0> 24 >= 42
=> false
irb(main):022:0> 24 < 42
=> true
irb(main):023:0> 24 <= 42
=> true
```

We recommend trying out some of these comparison operations on your own to gain a better understanding. We will be using various boolean literals and comparison operations throughout the rest of this primer.

Congratulations! You have learned about some of the basic ways to use the boolean data types, and perform basic comparison operations.

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
