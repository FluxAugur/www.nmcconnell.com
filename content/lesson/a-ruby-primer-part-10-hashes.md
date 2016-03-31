+++
title = "A Ruby Primer, Part 10 – Hashes"
date = "2014-04-03T11:43:51-04:00"
description = "Manipulating hashes with Ruby."
draft = false
tags = ["Development", "Ruby", "Hashes", "Command Line"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Terms
> **Hash:** *A hash is an associative collection of unique keys and their values.* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Hash.html)

### Hashes in Ruby

Ruby allows us to create dictionary-like objects, called hashes, which are associative collections of unique key-value pairs. Hashes are similar to arrays, but can use any object as an index, as opposed to the integer index that arrays use.

In Ruby, we define a hash using curly braces (\{\}) and a colon (':') after the key (if the key is a [Ruby symbol](http://www.ruby-doc.org/core-2.1.1/Symbol.html)), or a hash rocket ('=>') after the key (if the key is a string). (*Note that we will be discussing Ruby symbols later in this primer, but for now, keep in mind that after creating a symbol using a colon **after** the symbol name, you can access the symbol by putting a colon **before** the symbol name.*) Like other literals, we can assign hashes to variables.

From IRB, let's see hashes in action.

``` irb Hash literals
irb(main):001:0> secret_id = {"Superman" => "Clark Kent", "Wonder Woman" => "Diana Prince", "Batman" => "Bruce Wayne", "Green Lantern" => "Alan Scott", "The Flash" => "Jay Garrick"}
=> {"Superman"=>"Clark Kent", "Wonder Woman"=>"Diana Prince", "Batman"=>"Bruce Wayne", "Green Lantern"=>"Alan Scott", "The Flash"=>"Jay Garrick"}
irb(main):002:0> secret_id["Superman"]
=> "Clark Kent"
irb(main):003:0> secret_id["Green Lantern"]
=> "Alan Scott"
irb(main):004:0> first_appearance = {superman: 1938, wonder_woman: 1941, batman: 1939, green_lantern: 1940, the_flash: 1940}
irb(main):005:0> first_appearance[:wonder_woman]
=> 1941
irb(main):006:0> first_appearance[:the_flash]
=> 1940
```

Ruby provides many useful hash methods. We recommend exploring the [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Hash.html) and trying out some of these on your own to gain a better understanding. We will be using various hash methods throughout the rest of this primer.

Congratulations! You have learned about some of the basic ways to use the hash data type.

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
