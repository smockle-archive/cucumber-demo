#!/usr/bin/ruby
require File.expand_path(File.dirname(__FILE__) + "/../../src/fibonacci_calculator")

Given /I want to find a value in the Fibonacci sequence/ do
  @fib = FibonacciCalculator.new
end

When /I specify n=(.*)/ do |n|
  @fib.get(n)
end

Then /the calculator should return (\d+)/ do |n|
  @fib.value? == (n.to_i)
end

Then /the calculator should return an error/ do
  @fib.value?.match(/^ERROR.*/)
end
