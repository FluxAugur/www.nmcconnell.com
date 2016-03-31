+++
title = "A Ruby Primer, Part 9 – Arrays"
date = "2014-04-03T10:19:52-04:00"
description = "Manipulating arrays with Ruby."
draft = false
tags = ["Development", "Ruby", "Arrays", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Terms
> **Array:** *An array is an ordered, indexed collection of objects.* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Array.html)

### Arrays in Ruby

Ruby allows us to create ordered (but not necessarily sequenced) collections of objects, called arrays. An array contains some number of elements (objects) which are indexed using integers. The first element of an array is at index 0. (e.g. An array containing 5 elements would have indices 0, 1, 2, 3, and 4, representing the first, second, third, fourth, and fifth elements of the array, respectively.)

In Ruby, we define an array using square brackets (\[\]). Like other literals, we can assign arrays to variables.

From IRB, let's see arrays in action.

``` irb Array literals
irb(main):001:0> [24, 30, 28, 42, 38]
=> [24, 30, 28, 42, 38]
irb(main):002:0> ["Disciples", "Code", "of"]
=> ["Disciples", "Code", "of"]
irb(main):003:0> postive_even_numbers_under_ten = [2, 4, 6, 8]
=> [2, 4, 6, 8]
irb(main):004:0> heroes = ["Superman", "Wonder Woman", "Batman", "Green Lantern", "The Flash"]
=> ["Superman", "Wonder Woman", "Batman", "Green Lantern", "The Flash"]
```

We can access an element of an array by using the square brackets to reference that element's index.

``` irb Referencing elements of an array
irb(main):005:0> positive_even_numbers_under_ten[0]
=> 2
irb(main):006:0> positive_even_numbers_under_ten[3]
=> 8
irb(main):007:0> heroes[1]
=> "Wonder Woman"
irb(main):008:0> heroes[3]
=> "Green Lantern"
```

We can use elements of an array in statements and expressions.

``` irb Array elements in statements and expressions
irb(main):009:0> sum = positive_even_numbers_under_ten[0] + positive_even_numbers_under_ten[1] + positive_even_numbers_under_ten[2] + positive_even_numbers_under_ten[3]
=> 20
irb(main):010:0> puts "My favorite heroes are " + heroes[0] + " and " + heroes[3]
=> nil
My favorite heroes are Superman and Green Lantern
```

Ruby gives us much more efficient methods to work with arrays, which we will be discussing later in this primer.

#### The to_a Method
> **Method Signatures:**
>
> - *to_a -> ary* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Array.html#method-i-to_a)

In Ruby, the `to_a` method allows us to convert a range into an array.

From IRB, let's see the `to_a` method in action.

``` irb The to_a method
irb(main):011:0> (24..42).to_a
=> [24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
irb(main):012:0> whole_numbers_under_ten = 0...10
=> 0...10
irb(main):013:0> whole_numbers_under_ten.to_a
=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
irb(main):014:0> whole_numbers_under_ten.to_a[4]
=> 4
irb(main):015:0> letters = 'a'..'z'
=> "a".."z"
irb(main):016:0> letters.to_a
=> ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "y", "x", "z"]
irb(main):017:0> letters.to_a[4]
=> "e"
irb(main):018:0> letters.to_a[25]
=> "z"
```

Ruby provides many useful array methods. We recommend exploring the [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Array.html) and trying out some of these on your own to gain a better understanding. We will be using various array methods throughout the rest of this primer.

Congratulations! You have learned about some of the basic ways to use the array data type.

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
