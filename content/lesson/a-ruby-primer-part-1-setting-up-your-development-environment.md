+++
title = "A Ruby Primer, Part 1 – Setting up your development environment"
date = "2014-03-24T07:46:31-04:00"
description = "Setting up a development environment for Ruby."
draft = false
tags = ["Development", "Ruby", "Practice", "Learn", "Command Line", "Environment"]
topics = ["Development", "Ruby"]
courses = ["Ruby Primer"]
series = ["Disciples of Code"]
+++
The first step to learning Ruby (or any programming language) is to set up your development environment, so let's dive right in.

The simplest method is to use a free, online development environment, such as those provided by [Koding.com](https://koding.com/R/nathanialmcconnell). If you have already signed up for a [GitHub](https://github.com/) account (which is highly recommended for source control and for sharing your code), you can sign up for Koding.com using your GitHub account credentials. As part of our goal of collaborative learning, we will be using both Koding.com and GitHub in the future, but neither are required to be able to complete this Ruby primer.

### Installing Ruby

The alternative to using an online development environment is to install Ruby on your local development machine (e.g. your desktop or laptop computer).

#### Installing Ruby on Windows
> The easiest way to install Ruby on Windows is by using the [RubyInstaller](http://rubyinstaller.org/). We will be using Ruby 2.0.0-p451 (patch level 451 of Ruby version 2.0.0). Simply download the [32-bit](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.0.0-p451.exe?direct) or [64-bit](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.0.0-p451-x64.exe?direct) versions of the RubyInstaller, and run the downloaded program. When presented with the Setup dialog box, please *select* **all** of the given options (as indicated in the following screenshot).

#### Installing Ruby on OS X or Linux
> The easiest way to install Ruby on OS X or Linux is by using the [Ruby Version Manager (RVM)](http://rvm.io/). To do so, open a Terminal window and execute the following command.

``` bash Installing RVM and Ruby
$ \curl -sSL https://get.rvm.io | bash -s stable –ruby
```

### Verifying Your Ruby Installation
Once you have Ruby installed, you can verify your installation (and check the Ruby version) by opening up a Terminal window (OS X or Linux) or a Command Prompt (Windows) and executing the following command on your command line.

``` bash Checking your Ruby version
$ ruby -v
```

Congratulations! You have set up your development environment and are ready to get started with Ruby.

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
