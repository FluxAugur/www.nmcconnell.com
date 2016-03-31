+++
title = "A Ruby Primer, Part 4 – Outputting and inputting data"
date = "2014-03-31T01:45:31-04:00"
description = "Exploring how to input and output data with Ruby."
draft = false
tags = ["Development", "Ruby", "Data", "Command Line", "Input/Output"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

If you are unfamiliar with using the Ruby Interactive Shell, please refer to [Part 3]({{ root_url }}/2014/03/a-ruby-primer-part-3-ruby-scripts/) of this primer.

### Terms
> **Method:** *A method is a member function (collection of code statements or expressions) associated with an object, and which has access to its data and its member variables.*
>
> **Method Signature:** *A method signature is a specification for how to use a method and is given in the format method_name([arguments]) -> return_value, where [arguments] is a potentially empty array (collection) of objects to be given as parameters for the method.*
>
> **nil:** *A null class. nil **does not** equal the number 0. nil represents the absense of data.*

### Outputting (Displaying) Data

Ruby gives us a variety of options for outputting data. We are going to look at the `puts` and `print` methods.

#### The puts Method
> **Method Signatures:**
>
> - *puts(obj, ...) -> nil* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/IO.html#method-i-puts)

In Ruby, the `puts` method will write (display) a given object (or array of objects) to the standard output (e.g. the console).

From IRB, let's see the `puts` method in action.

``` irb Displaying "Hello, world!" with the puts method
irb(main):001:0> puts("Hello, world!")
Hello, world!
=> nil
```

We told IRB to evaluate the `puts` method with the string "Hello, world!" as a single argument given as a parameter. "Hello, world!" was displayed to the standard output, and a nil was retuned.

The `puts` method does not require the use of parentheses. The following example will yield the exact same result as the previous example.

``` irb Displaying "Hello, world!" with the puts method without parentheses
irb(main):002:0> puts "Hello, world!"
Hello, world!
=> nil
```

The `puts` method appends a newline character after each of the given parameters, which is why the returned result (=> nil) is on a new line. We can see this in action, more specifically, by providing multiple arguments.

``` irb Multiple arguments
irb(main):003:0> puts("Hello, world!", "Goodbye, world!")
Hello, world!
Goodbye, world!
=> nil
irb(main):004:0> puts "Hello, world!", "Goodbye, world!"
Hello, world!
Goodbye, world!
=> nil
irb(main):005:0> puts("One", "small", "step", "for", "man")
One
small
step
for
man
=> nil
irb(main):006:0> puts "One", "small", "step", "for", "man"
One
small
step
for
man
=> nil
```

#### The print Method
> **Method Signatures:**
>
> - *print() -> nil* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/IO.html#method-i-print)
>
> - *print(obj, ...) -> nil* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/IO.html#method-i-print)

The `print` method works similarly to the `puts` method, but a newline character is not appended to each argument.

From IRB, let's see the `puts` method in action.

``` irb The print method
irb(main):007:0> print("Hello, world!")
Hello, world!=> nil
irb(main):008:0> print "Hello, world!"
Hello, world!=> nil
irb(main):009:0> print("Hello, world!", "Goodbye, world!")
Hello, world!Goodbye, world!=> nil
```

We can see that the returned result (=> nil) is not on a new line. To append a newline character to an argument when using the `print` method, use the newline (\n) escape character. We can see that if a new line is desired, it is much simpler to use the `puts` method.

``` irb The print method with the newline (\n) escape character
irb(main):010:0> print("Hello, world!\n")
Hello, world!
=> nil
irb(main):011:0> print "Hello, world!\n"
Hello, world!
=> nil
irb(main):012:0> print("Hello, world!\n", "Goodbye, world!\n")
Hello, world!
Goodbye, world!
=> nil
irb(main):013:0> print "One\n", "small\n", "step\n", "for\n", "man\n"
One
small
step
for
man
=> nil
```

#### Displaying Other Data

The `puts` and `print` methods can also be used to display numbers or to evaluate expressions.

``` irb Displaying numbers and expressions
irb(main):014:0> puts(1)
1
=> nil
irb(main):015:0> print(2 + 2)
4=> nil
```

### Inputting Data

Ruby gives us a variety of options for outputting data. We are going to look at the `gets` method.

#### The gets Method
> (**Method Signatures:**
>
> - *gets(sep=$/ -> string or nil)* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/IO.html#method-i-gets)
>
> - *gets(limit) -> string or nil* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/IO.html#method-i-gets)
>
> - *gets(sep, limit) -> string or nil* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/IO.html#method-i-gets)

The `gets` method will read (input) an object from the standard input (e.g. the keyboard). The `gets` method will append (or concatenate) a newline character to the data read from the standard input.

From IRB, let's see the `gets` method in action. (*Note that after entering the `gets` method, the cursor is waiting to read data from the standard input. We will type some data and press <RETURN> or <ENTER> on the keyboard to indicate that we are done entering data.*)

``` irb The gets method
irb(main):016:0> name = gets
Superman
=> "Superman\n"
```

If we evaluate the name variable, we will see that a newline character has been appended for us. We can then output the data stored in the name variable.

``` irb Evaluating and outputting input
irb(main):017:0> name
=> "Superman\n"
irb(main):018:0> puts(name)
Superman
=> nil
irb(main):019:0> print name
Superman
=> nil
```

#### The chomp Method
> **Method Signatures:**
>
> - *chomp(separator=$/) -> new_str* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/String.html#method-i-chomp)

If we don't want to display the appended newline character, we can use the `chomp` method.

From IRB, let's see the `chomp` method in action.

``` irb The chomp method
irb(main):020:0> print name.chomp
Superman=> nil
```

If we don't want to store the data in a variable, we can get input and output the data with one statement. (*Note that this works because the statements evaluate from right to left.*)

``` irb Input and output without storing the data in a variable
irb(main):021:0> puts gets
Batman
Batman
=> nil
irb(main):022:0> print(gets)
Batman
Batman
=> nil
irb(main):023:0> print gets.chomp
Batman
Batman=> nil
```

#### Inputting Other Data

The `gets` method reads data from the standard input as a string object. Let's see what happens when we try to input numbers and then evaluate an expression using those numbers. We can see that the numbers were read from standard input as string objects, and then the evaluation of `number1 + number2` resulted in a concatenation of the two strings stored in the variables.

``` irb Inputting numbers with the gets method
irb(main):024:0> number1 = gets
1
=> "1\n"
irb(main):025:0> number2 = gets
2
=> "2\n"
irb(main):026:0> numberTau = gets
6.28319
=> "6.28319\n"
irb(main):027:0> number1 + number2
=> "1\n2\n"
irb(main):028:0> number1 + numberTau
=> "1\n6.28319\n"
```

#### The Integer, Float, to_i, and to_f Methods
> **Method Signatures:**
>
> - *Integer(obj) -> integer* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Integer.html)
>
> - *Float(obj) -> float* [Ruby codumentation](http://www.ruby-doc.org/core-2.1.1/Float.html)
>
> - *to_i -> integer* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Integer.html#method-i-to_i)
>
> - *to_f -> float* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Float.html#method-i-to_f)

If we want to perform mathematical calculations on integers or floating point numbers input using the `gets` command, we need to convert the string that is returned from the `gets` command. We can do this by using the `Integer` and `Float` methods. Alternatively, we can use the `to_i` and `to_f` methods.

From IRB, let's see the `Integer`, `Float1`, `to_i`, and `to_s` methods in action.

``` irb Converting and using numeric data input with the gets method
irb(main):029:0> Integer(number1)
=> 1
irb(main):030:0> number2.to_i
=> 2
irb(main):031:0> number1.to_i + Integer(number2)
=> 3
irb(main):032:0> Float(numberTau)
=> 6.28319
irb(main):033:0> numberTau.to_f + number2.to_i
=> 8.28319
```

#### The to_s Method (for floats)
> **Method Signatures:**
>
> - *to_s -> string* [Ruby documentation](http://www.ruby-doc.org/core-2.1.1/Float.html#method-i-to_s)

Ruby doesn't know how to implicitly convert a float into a string. However, Ruby does provide us with the `to_s` method to accomplish this.

From IRB, let's see the `to_s` method in action.

``` irb Outputting floats using the to_s method
irb(main):034:0> result = numberTau.to_f + number2.to_i
=> 8.28319
irb(main):035:0> result.to_s
=> "8.28319"
irb(main):036:0> puts result.to_s
8.28319
=> nil
```

Congratulations! You have learned how to output and input data, as well as how to do simple conversion of strings into integers and floats.

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
