+++
title = "A Ruby Primer, Part 8 -- Ranges"
date = "2014-04-02"
description = "Manipulating ranges with Ruby."
draft = false
tags = ["Development", "Ruby", "Ranges", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Terms
> **Range:** *A range is a sequenced interval of data.* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Range.html)

### Ranges in Ruby

Ruby allows us to create sequenced intervals of data (e.g. the integers 1 through 10) as a range object. We can create a range of any type of object in Ruby, as well as create our own custom ranges.

In Ruby, ranges can be either inclusive of the end value, or exclusive of the end value, and use the binary operators '..', or '...', respectively. Like other literals, we can assign ranges to variables.

From IRB, let's see ranges in action.

``` irb Range literals
irb(main):001:0> 24..42
=> 24..42
irb(main):002:0> 'a'..'z'
=> "a".."z"
irb(main):003:0> 'aabb'..'aacc'
=> "aabb".."aacc"
irb(main):004:0> positive_numbers_under_ten = 1...10
=> 1...10
irb(main):005:0> letters = 'a'..'z'
=> "a".."z"
irb(main):006:0> custom_range = 'aabb'..'aacc'
=> "aabb".."aacc"
```

What does the range 'aabb'..'aacc' do? It creates a custom range containing the words 'aabb', 'aabc', 'aabd', ..., 'aaca', 'aacb', 'aacc'.

#### The include? Method
> **Method Signatures:**
>
> - *include?(obj) -> true or false* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Range.html#method-i-include-3F)

In Ruby, the `include?` method will compare the specified object to determine if it exists within a range. (*Note that if we want to use the `include?` method on a range literal, we need to enclose the range literal in parentheses.*)

From IRB, let's see the `include?` method in action.

``` irb The include? method
irb(main):007:0> (24...42).include? 42
=> false
irb(main):008:0> ('a'..'z').include?('r')
=> true
irb(main):009:0> letters.include? 'y'
=> true
irb(main):010:0> positive_numbers_under_ten.include? 0
=> false
irb(main):011:0> custom_range.include? 'aabz'
=> true
irb(main):010:0> custom_range.include? 'abcd'
=> false
```

#### The min Method
> **Method Signatures:**
>
> - *min -> obj* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Range.html#method-i-min)
>
> - *min \{\| a, b \| block \} -> obj* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Range.html#method-i-min)

In Ruby, the `min` method returns the minimum value in a range.

From IRB, let's see the `min` method in action.

``` irb The min method
irb(main):011:0> (24..42).min
=> 24
irb(main):012:0> (24...42).min
=> 24
irb(main):013:0> letters.min
=> "a"
irb(main):014:0> positive_numbers_under_ten.min
=> 1
irb(main):015:0> custom_range.min
=> "aabb"
```

#### The max Method
> **Method Signatures:**
> - *max -> obj* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Range.html#method-i-max)
>
> - *max \{\| a, b \| block \} -> obj* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Range.html#method-i-max)

In Ruby, the `max` method returns the maximum value in a range.

From IRB, let's see the `max` method in action.

``` irb The max method
irb(main):016:0> (24..42).max
=> 42
irb(main):017:0> (24...42).max
=> 41
irb(main):018:0> letters.max
=> "z"
irb(main):019:0> positive_numbers_under_ten.max
=> 9
irb(main):020:0> custom_range.max
=> "aacc"
```

#### The each Method
> **Method Signatures:**
>
> - *each \{\| i \| block \} -> rng* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Range.html#method-i-each)
>
> - *each -> an_enumerator* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Range.html#method-i-each)

In Ruby, the `each` method will iterate over the elements of a range, sending each element, i, to the block (a block of code, containing one or more statements or expressions).

From IRB, let's see the `each` method in action.

``` irb The each method
irb(main):021:0> (24..42).each {| n | print n }
24252627282930313233343536373839404142=> 24..42
irb(main):022:0> letters.each {| letter | print letter, ' ' }
a b c d e f g h i j k l m n o p q r s t u v w x y z => "a".."z"
irb(main):023:0> positive_number_under_ten.each {| number | number * 2 }
2 4 6 8 10 12 14 16 18 => 1...10
irb(main):024:0> custom_range.each {| word | puts word }
aabb
aabc
aabd
aabe
aabf
aabg
aabh
aabi
aabj
aabk
aabl
aabm
aabn
aabo
aabp
aabq
aabr
aabs
aabt
aabu
aabv
aabw
aabx
aaby
aabz
aaca
aacb
aacc
=> "aabb".."aacc"
```

#### Another Comparison Operator

When using ranges, Ruby gives us another comparison operation, 'is a case of' (or 'is an element of'), through the binary operator '==='.

From IRB, let's see this new comparison operator in action.

``` irb New comparison operator
irb(main):025:0> (24..42) === 30
=> true
irb(main):026:0> ('a'..'z') === 5
=> false
irb(main):027:0> letters === 'q'
=> true
irb(main):028:0> positive_numbers_under_ten === 10
=> false
irb(main):029:0> custom_range === 'aabr'
=> true
```

Ruby provides many other useful range methods. We recommend exploring the [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Range.html) and trying out some of these on your own to gain a better understanding. We will be using various range methods throughout the rest of this primer.

Congratulations! You have learned about some of the basic ways to use the range data type.

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
