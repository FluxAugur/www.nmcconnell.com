+++
title = "A Ruby Primer, Part 2 -- Using the Ruby interactive shell IRB"
date = "2014-03-25"
description = "Using IRB, the Ruby interactive shell."
draft = false
tags = ["Development", "Ruby", "Practice", "Learn", "Command Line", "IRB"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

### Using IRB

The Ruby Interactive Shell, or IRB, provides a command line with which we can immediately evaluate a Ruby statement or expression. To load IRB, open a Terminal window (OS X or Linux) or a Command Prompt (Windows), and execute the following command.

``` bash Loading IRB
$ irb
```

You should now be inside IRB, and should have a command prompt similar to the following.

``` irb IRB command prompt
irb(main):001:0>
```

In Ruby, a literal number evaluates to itself. (*Note that each line beginning with 'irb(main)' is a command prompt, and each line beginning with '=>' is the resultant evaluation of the statement or expression to be evaluated.*)

``` irb Evaluation of a literal number
irb(main):001:0> 1
=> 1
```

An arithmetic expression evaluates to the result of the expression, taking into account order of precedence of arithmetic operators (more on this in future parts of the Ruby primer).

``` irb Evaluation of an arithmetic expression
irb(main):002:0> 1 + 2
=> 3
irb(main):003:0> 3 * 3
=> 9
irb(main):004:0> 1 + 2 * 3
=> 7
```

Strings evaluate to themselves, and can be concatenated (using the '+' operator).

``` irb Evaluation of a string
irb(main):005:0> "hello, world"
=> "hello, world"
irb(main):006:0> "hello, " + "world"
=> "hello, world"
```

Data can be stored in variables (using the '=' operator, and the variable will evaluate to the contents of the variable.

``` irb Storing data in and evaluating variables
irb(main):007:0> greeting = "hello"
=> "hello"
irb(main):008:0> greeting
=> "hello"
```

Variables can be concatenated (again, using the '+' operator).

``` irb Concatenating and evaluating variables
irb(main):009:0> greeting + ", world"
=> "hello, world"
irb(main):010:0> subject = "world"
=> "world"
irb(main):011:0> greeting + ", " + subject
=> "hello, world"
```

Complex expressions can be evaluated. (Don't worry too much about what exactly is happening here, as it will be covered in-depth in future parts of this Ruby primer.)

``` irb Evaluating a complex expression
irb(main):012:0> i = 1
=> 1
irb(main):013:0> while i < 100
irb(main):014:1>   print i
irb(main):015:1>   i += 1
irb(main):016:1> end
123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899=> nil
```

Functions can be defined and evaluated. (*Note that in Ruby, functions do not require a 'return' statement, you can just have an expression. If that expression is the last statement, that is what will be returned.*)

``` irb Defining and evaluating functions
irb(main):017:0> def square(n)
irb(main):018:1>   return n * n
irb(main):019:1> end
=> nil
irb(main):020:0> square(2)
=> 4
irb(main):021:0> square(4)
=> 16
irb(main):022:0> def sum(num1, num2)
irb(main):023:1>   num1 + num2
irb(main):024:1> end
=> nil
irb(main):025:0> sum(1, 2)
=> 3
```

You can exit IRB by using the 'quit' command, and will be returned to your regular command prompt.

``` irb Exiting IRB
irb(main):026:0> quit
$
```

Congratulation! You have just gotten your feet wet using Ruby and the Ruby Interactive Shell (IRB).

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
