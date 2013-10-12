#!/usr/bin/ruby
################################################################################
# This file contains exercises for the SE31520 ruby course
# Please fill in the solutions
#
# Example:
#   $ ruby -w control_structures.rb
#
################################################################################



################################################################################
# = Control Structures
# == Exercise 1a: fib using recursion
# Implement fib using recursion
#
def fib(i)
  return i < 2 ? i : fib(i-1) + fib(i-2)
end
5.times do |count| puts "Exercise 1a: result of fib(#{count}) = #{fib(count)}" end
puts

# == Exercise 1b: fib using while
# Implement fib using while
#
def fib1(i)
  # INSERT CODE HERE: more than one line, mine was seven lines.
  n = 1
  output, number_before = 0,1
  while(n <= i)
    #output, number_before = number_before, output+number_before
    temp_num = number_before
    number_before = output+temp_num
    output = temp_num
    n += 1
  end
  return output
end
5.times do |count| puts "Exercise 1b: result of fib(#{count}) = #{fib1(count)}" end
puts

# == Exercise 1c: fib using for loop
# Implement fib using for loop
#
def fib2(i)
  output, number_before = 0,1
  for n in (1..i)
    temp_num = number_before
    number_before = output+temp_num
    output = temp_num
  end
  return output
  # INSERT CODE HERE: more than one line, mine was five lines.
end
5.times do |count| puts "Exercise 1c: result of fib(#{count}) = #{fib2(count)}" end
puts

# == Exercise 1d: fib using times method
# Implement fib using times method
#
def fib3(i)
  # INSERT CODE HERE: more than one line, mine was five lines.
  output, number_before = 0,1
  i.times do |i|
    temp_num = number_before
    number_before = output+temp_num
    output = temp_num
  end
  return output
end
5.times do |count| puts "Exercise 1d: result of fib(#{count}) = #{fib3(count)}" end
puts

# == Exercise 1e: fib using loop construct
# Implement fib using loop construct
#
def fib4(i)
  # INSERT CODE HERE: more than one line, mine was seven lines.
  output, number_before, n = 0,1,1
  loop do
    temp_num = number_before
    number_before = output+temp_num
    output = temp_num
    n += 1
    if n == i
      break;
    end
  end
end
5.times do |count| puts "Exercise 1e: result of fib(#{count}) = #{fib4(count)}" end
puts

# == Exercise 2: Iterator
# Write a fibonacci iterator method.
# This is a method that takes a number n and a block and then calls the block with the
# result of fib(0), fib(1) .. fib(n) You will need to decide what the block looks like
# when you call iterator
def iterator(n, &block)
  # INSERT CODE HERE: mine was one line.
end
puts "Exercise 2"
# INSERT CALL TO iterator with block here
puts

# == Exercise 3: Generator
# Write a fibonacci generator class.
# This is a class that has a next method which on each call returns the next fibonacci number
class FibGenerator
  # INSERT CODE HERE: mine has 15 lines. You can do better!
  def initialize

  end
end

puts "Exercise 3"
gen = FibGenerator.new(5)
while (result = gen.next)
  puts "fib value now #{result}"
end


