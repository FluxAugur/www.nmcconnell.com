+++
title = "A Ruby Primer, Part 3 -- Ruby scripts"
date = "2014-03-30"
description = "Scripts are files containing Ruby code which can be executed to effect."
draft = false
tags = ["Development", "Ruby", "Scripts", "Command Line", "Files"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
If you have not yet set up your development environment, please refer to [Part 1]({{ root_url }}/2014/03/a-ruby-primer-part-1-setting-up-your-development-environment/) of this primer.

### Scripts?

While using the Ruby Interactive Shell (IRB) to evaluate your Ruby code can be very useful for learning, debugging, and executing short statements or expressions, to create larger (and persistent) Ruby programs, you will need to store all of your Ruby code in scripts.

A script is simply a plain-text file that contains your code. In our case, we will be creating Ruby scripts (containing Ruby code). All Ruby scripts should have a Ruby filename extension (e.g filename.rb).

### Creating Scripts

To create a script, you will use a text editor. There are many different text editors available. Here are a few that we recommend.

- Notepad (Windows; Included with operating system)
- [Sublime Text](http://www.sublimetext.com/) (Windows, OS X, Linux; Free to evaluate - $70 license)
- [Notepad++](http://notepad-plus-plus.org/) (Windows; Free)
- [GNU nano](http://www.nano-editor.org/) (OS X, Linux; Free)
- [vim](http://www.vim.org/) (Windows, OS X, Linux; Free)

We will not be covering installation or usage of your chosen text editor. Please refer to the relevant documentation for the application of your choice.

### Creating and Executing Ruby Scripts

Using your chosen text editor, create a file called `helloworld.rb`. While it isn't necessary, it is recommended that you store all of your Ruby scripts in an appropriate directory on your filesystem (e.g. a directory called "ruby-primer"). Open the file, add the following Ruby code, and then save the file.

``` ruby helloworld.rb
puts("Hello, world!")
```

To execute the `helloworld.rb` Ruby script, open a Terminal window (OS X or Linux) or a Command Prompt (Windows), navigate to the directory where you saved the file, and execute the following command.

``` bash Executing helloworld.rb
$ ruby helloworld.rb
```

You should see the text "Hello, world!" output after executing your `helloworld.rb` Ruby script, as such:

``` bash Executing helloworld.rb (with output)
$ ruby helloworld.rb
Hello, world!
```

We will be executing many Ruby scripts throughout the remainder of this primer.

Congratulation! You have learned how to create and execute Ruby scripts.

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
