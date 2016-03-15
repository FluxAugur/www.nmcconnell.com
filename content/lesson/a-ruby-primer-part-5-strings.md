+++
title = "A Ruby Primer, Part 5 -- Strings"
date = "2014-04-01"
description = "Manipulating strings with Ruby."
draft = false
tags = ["Development", "Ruby", "Strings", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Terms
> **Data Type:** *A data type is a classification identifying a type of data.* [Wikipedia article](http://en.wikipedia.org/wiki/Data_type)
>
> **Literal:** *A literal creates objects in Ruby.* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Float.html)
>
> **Class:** *A class is a template for creating objects, and for providing initial values for state (member variables, or properties) and implementations of behavior (member fuctions, or methods).* [Wikipedia article](http://en.wikipedia.org/wiki/Class_(computer_programming))
>
> **String:** *A Ruby class representing a sequence of characters.* [Ruby documentation](http://www.ruby-doc.org/core-2.1.0/String.html)
>
> **Escape Character:** *An escape character is a special character (usually preceded by a backslash that evaluates to a special character, e.g. tab, newline, etc.).* [Wikipedia article](http://en.wikipedia.org/wiki/Escape_character)

### Strings in Ruby

String literals in Ruby can be created using either single or double quotes (e.g. "Clark" or 'Kent'). Any characters that are encompassed withing single or double quotes is considered a string. In [Part 4]({{ root_url }}/2014/03/a-ruby-primer-part-4-outputting-and-inputting-data/) of this primer, we also saw that we can use the `gets` method to get a data from the standard input as a string. (*Remember, the `gets` method appends a newline character to each string input.*)

From IRB, let's see string literals in action.

``` irb Strings with single or double quotes
irb(main):001:0> name = 'Clark'
=> "Clark"
irb(main):002:0> name = "Clark"
=> "Clark"
irb(main):003:0> name = gets
Clark
=> "Clark\n"
irb(main):004:0> print name
Clark
=> nil
```

While the `gets` method appends a newline escape character to each string input, we can also specify escape characters when we create strings in Ruby. In the following example, we are embedding a tab (\t) escape character and a space (\s) character in our strings.

``` irb Escape characters in strings
irb(main):005:0> name = "Clark\tKent"
=> "Clark\tKent"
irb(main):006:0> print name
Clark    Kent=> nil
irb(main):007:0> name = "Clark\sKent"
=> "Clark Kent"
irb(main):008:0> print name
=> Clark Kent=> nil
```

One of the advantages of using double quotes over single quotes is that you can embed a single quote as an apostrophe (without using an escape character). (*Note that the following example will put IRB into an error mode. Simple CTRL-C to get out of the error mode. Technically, this isn't an **error** mode, IRB is simply waiting for us to complete the unfinished, additional, single-quoted string, as indicated by the trailing single quote on our prompt.*)

``` irb Embedding single quotes inside double quotes
irb(main):009:0> possession = "Clark's"
=> "Clark's"
irb(main):010:0> print possession
Clark's=> nil
irb(main):011:0> possession = 'Clark's'
irb(main):012:0' print possession
irb(main):013:0' ^C
```

We can avoid this issue (and embed apostrophes inside single-quoted strings) by using an escape character. Or, we can simply use double quotes around around strings. (*Note that we can embed a double quote inside a double-quoted string using an escape character, also.*)

``` irb Using an escape character for an apostrophe
irb(main):014:0> possession = 'Clark\'s'
=> "Clark's"
irb(main):015:0> print possession
Clark's=> nil
irb(main):016:0> a_qoute = 'He said, "This is a job for Superman!"'
=> "He said, \"This is a job for Superman!\""
irb(main):017:0> print a_quote
He said, "This is a job for Superman!"=> nil
irb(main):018:0> a_quote = "Zod yelled, \"Kneel before Zod!\""
=> "Zod yelled, \"Kneed before Zod!\""
irb(main):019:0> print a_quote
Zod yelled, "Kneel before Zod!"=> nil
```

Another difference between using single and double quotes for strings, is that you cannot use certain escape characters (e.g. newline, tab, space, etc.) inside single-quoted strings.

We can also create 'Here' documents (or a fancy, multiline string). To do this, we are going to create a Ruby script. We can create a multiline string inside a Ruby script using '<<' followed by an text identifier. Anything encountered by the Ruby script, up to the next instance of the text identifier, is considered a part of the string.

``` ruby Example here.rb
words = <<HERE
    One small step
    for man.
    One giant leap
    for mankind.
HERE
print words
```

Run this Ruby script from your command line (in the appropriate directory).

``` bash Running here.rb
$ ruby here.rb
   One small step
   for man.
   One giant leap
   for mankind.
```

#### The split Method
> **Method Signatures:**
>
> - *split(pattern=$;, [limit]) -> anArray* [Ruby documentation](http://www.ruby-doc.org/core-2.1.0/String.html#method-i-split)

In Ruby, the `split` method will divide a string into substrings based on a delimiter, and return an array (indicated by square brackets, []) of these substrings. (*Note that we will be discussing arrays in a later part of this primer.*)

Ruby also allows us to create and assign multiple variables at the same time by using a comma (,) to separate the variables.

From IRB, let's see the `split` method in action.

``` irb The split method
irb(main):001:0> first, last = "Clark,Kent".split(',')
=> ["Clark", "Kent"]
irb(main):002:0> print first
Clark=> nil
irb(main):003:0> print last
Kent=> nil
irb(main):004:0> puts first + " " + last
Clark Kent
=> nil
```

#### The squeeze Method
> **Method Signatures:**
>
> - *squeeze([other_str\*]) -> new_str* [Ruby documentation](http://www.ruby-doc.org/core-2.1.0/String.html#method-i-squeeze)

In Ruby, the `squeeze` method will take a string and replace any runs (multiples of the same character) of a character with a single instance of that character. (*Note that a space character is the default character for replacement.*)

From IRB, let's see the `squeeze` method in action.

``` irb The squeeze method
irb(main):005:0> first = "Clark          "
=> "Clark          "
irb(main):006:0> last = "Kent"
=> "Kent"
irb(main):007:0> print first + last
Clark          Kent=> nil
irb(main):008:0> print first.squeeze + last
Clark Kent=> nil
irb(main):009:0> first = "Clarrrrrk"
=> "Clarrrrrk"
irb(main):010:0> last = "     Kennnttttt"
=> "     Kennnttttt"
irb(main):011:0> print first + last
Clarrrrrk     Kennnttttt=> nil
irb(main):012:0> print first.squeeze("r") + last.squeeze(" n-t")
Clark Kent=> nil
```

Ruby provides many other useful string methods. We recommend exploring the [Ruby documentation](http://www.ruby-doc.org/core-2.1.0/String.html) and trying out some of these on your own to gain a better understanding. We will be using various string methods throughout the rest of this primer.

Congratulations! You have learned about some of the basic ways to use the string data type.

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
