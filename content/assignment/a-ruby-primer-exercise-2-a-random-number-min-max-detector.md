+++
title = "A Ruby Primer: Exercise 2 – A random number min-max detector"
date = "2014-04-03T19:51:34-04:00"
description = "An exercise in creating a random number min-max detector with Ruby."
draft = false
tags = ["Development", "Ruby", "Practice", "Learn", "Command Line", "Random", "Min-Max"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
In this exercise, you will create a Ruby script to detect the minimum and maximum values from a collection of randomly generated numbers.

### Specification
- **File Name:** *random-min-max.rb*
- **Input:** *Several numbers representing the minimum possible randomly generated number, the maximum possible randomly generated number, and the number of random numbers to generate.*
- **Output:** *Several strings containing various prompts, the results of the minimum and maximum detected values from the randomly generated numbers, and all of the randomly generated numbers for verification purposes.*
- **Methods Used:** *puts, print, gets, chomp, to_i, to_s (for integers), min, max, each*
- **Classes Used:** *Random* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Random.html)

### Additional Notes

One of the best ways to learn a new programming language is to explore the language reference and specification for yourself. Even experienced coders will often find hidden gems in a language's documentation.

In this exercise, you will be using the Random class from the Ruby core specification. You will also be using a loop. As we have not yet covered loops in this primer, here is some code that you will want to include in your Ruby script to accomplish the generation of random numbers.

``` ruby Generating random numbers
while i < number_of_random_numbers.to_i
  random_numbers[i] = Random.random(minimum_possible_random_number).to_i..maximum_possible_random_number.to_i)
  i += 1
end
```

### Sample Output
``` text
Welcome to the Random Number Min-Max Detector by Disciples of Code

What is the lowest random number you would like to possibly generate? 24
What is the highest random number you would like to possibly generate? 42
How many random numbers (between 24 and 42 ) would you like to generate? 12

The maximum value of the random numbers generated is: 39
The minimum value of the random numbers generated is: 24

For verification, here are all of the randon numbers generated:
38 39 28 32 30 30 30 34 24 31 35 26

Thank you for using my program!
```

Give this exercise a try. A solution will be posted soon.

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
