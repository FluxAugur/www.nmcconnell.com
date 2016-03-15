+++
title = "A Ruby Primer, Part 6 -- Numbers"
date = "2014-04-02"
description = "Manipulating numbers with Ruby."
draft = false
tags = ["Development", "Ruby", "Numbers", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Terms
> **Numeric:** *A Ruby class representing a numeric data type.* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Numeric.html)
>
> **Integer:** *A Ruby class representing whole number data types.* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Integer.html)
>
> **Float:** *A Ruby class representing floating point number data types.* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Float.html)
>
> **Binary:** *A base-2 number system.* [Wikipedia article](http://en.wikipedia.org/wiki/Binary_number)
>
> **Dedimal:** *A base-10 number system.* [Wikipedia article](http://en.wikipedia.org/wiki/Decimal)
>
> **Hexadecimal:** *A base-16 number system.* [Wikipedia article](http://en.wikipedia.org/wiki/Hexadecimal)
>
> **Operator:** *A programming language construct that works like a function, but have syntactic or semantic differences.* [Wikipedia article](http://en.wikipedia.org/wiki/Operator_(computer_programming))

### Numbers in Ruby

Ruby allows us to work with a variety of number systems, including decimal (integers and floats), binary, hexadecimal, and others. Integers can be any whole number. Floats can be any floating point number (containing a decimal), but *cannot* begin with a decimal - you must use a leading zero (e.g. 0.1234, not .1234). Binary numbers must begin with 0b (e.g. 0b1010) and hexadecimal numbers must begin with 0x (e.g. 0x10AF). We can create negative numbers by using the unary negative '-' operator (a positive value is always assumed, but you can specify the unary positive '+' operator, if you wish). [Wikipedia article on unary operations](http://en.wikipedia.org/wiki/Unary_operation)

From IRB, let's see number literals in action.

``` irb Number literals in different number systems
irb(main):001:0> 42
=> 42
irb(main):002:0> 4321
=> 4321
irb(main):003:0> 6.28319
=> 6.28319
irb(main):004:0> 0b101010
=> 42
irb(main):005:0> 0x10E1
=> 4321
irb(main):006:0> .28319
SyntaxError: (irb):6: no .<digit> floating literal anymore; put 0 before dot
.28319
 ^
(irb):6: syntax error, unexpected '.'
.28319
 ^
        from <your IRB path here>:12:in '<main>'
irb(main):007:0> 0.28319
=> 0.28319
irb(main):008:0> -42
=> -42
irb(main):009:0> +42
=> 42
irb(main):010:0> -4321
=> -4321
irb(main):011:0> -6.28319
=> -6.28319
irb(main):012:0> -0b101010
=> -42
irb(main):013:0> -0x10E1
=> -4321
```

#### Arithmetic Operators

Ruby provides the standard arithmetic operations of addition, subtraction, multiplication, division, remainder (modulo), and exponention through the binary operators '+', '-', '\*', '/', '%', '\*\*', respectively.

From IRB, let's see the arithmetic operators in action.

``` irb Arithmetic operators
irb(main):014:0> 24 + 18
=> 42
irb(main):015:0> 4321 - 1234
=> 3087
irb(main):016:0> -42 + 6.28319
=> -35.71681
irb(main):017:0> 0b101010 * 2
=> 84
irb(main):018:0> 0x10E1 / -2
=> -2161
irb(main):019:0> 42.0 / 4
=> 10.5
irb(main):020:0> 42 / 4
=> 10
irb(main):021:0> 42 % 4
=> 2
irb(main):022:0> 2 ** 2
=> 4
irb(main):023:0> 2 ** 3
=> 8
```

As you can see, Ruby is smart enough to the data type of a given number (integer, float, etc.) and allows you to combine different number systems within the same arithmetic operation.


#### Converting Numbers to Strings

As covered in [Part 4]({{ root_url }}/2014/03/a-ruby-primer-part-4-outputting-and-inputting-data/) of this primer, we can use the `to_s` method to convert any number to a string. We can also use parenthesis to group operations and convert the result into a string. Part 4 also covers the `to_i` and `to_f` methods, which we won't rehash here.

``` irb Converting numbers to strings
irb(main):024:0> 42.to_s
=> "42"
irb(main):025:0> 4321.to_s
=> "4321"
irb(main):026:0> 6.28319.to_s
=> "6.28319"
irb(main):027:0> 0b101010.to_s
=> "42"
irb(main):028:0> 0x10E1.to_s
=> "4321"
irb(main):029:0> (-0b101010 * 2).to_s
=> "-84"
```

#### Order of Operations

Ruby orders the arithmetic operations just like you would expect. Parentheses can be used to override the standard order of operations.

- Exponentiation ('\*\*')
- Unary plus ('+') and minus ('-')
- Multiplication ('\*'), division ('/'), and modulo ('%')
- Addition ('+') and subtraction ('-')

Below, we are raising 2 to the 4th power (exponentiation), then multiplying -42 by 0x10E1 (hexadecimal 4321), then dividing by -0b101010 (binary -42), and adding all of that to the result of the initial exponentiation.

``` irb Order of operations
irb(main):030:0> 2 ** 4 + -42 * 0x10E1 / -0b101010
=> 4337
```

Let's override the order of operations with parentheses, and see what happens.

``` irb Overring order of operations with parentheses
irb(main):031:0> 2 ** ((4 + -42) * 0x10E1 / -0b101010)
=> 5324183932979082217173830423788624448232377020200871925044363740978552645617392603963657332653293294921533487382005730205842492472324978256389524698133274982954316968418759621851827737904061947651709998777768764044640777451180488447019488349748492015288249539865325121412715328770419801502841515154181645054344997871537357625278584389884882092167456117235962842412534832325361798374338229786121498548414734430752922733207597283706654956923362549302114482188128786150568960200298842155354973238386993145987063220515184400346894462278601827604890618760154083905012744638294036976331341289696738323216673862314043949607110345453655000393965492565350543837806500159501747398630390119445689566142598744356783963943236839177990311764712795015435453751014259414011381595061542051363110034101037226883045394977492273858105094107413813083844023881750262194931436484929958736179968990507461243553811446562638876287908064004870619573393903638752010524471027366924289557008444655821060975285285523655000932375240137129357855653393565053617024444743584021979644805497476255820320767466042088222845247236339159742784704106913314432388396580367715094914656526338930045950563418904868276928512
```

That's a really large number!!

Ruby provides many other useful numeric methods. We recommend exploring the Ruby documentation and trying out some of these on your own to gain a better understanding. We will be using various numeric methods throughout the rest of this primer.

Congratulations! You have learned about some of the basic ways to use the numeric data types, and perform basic arithmetic operations.

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
