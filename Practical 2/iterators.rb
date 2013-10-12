#!/usr/bin/ruby
################################################################################
# This file contains exercises for the SE31520 ruby course (courtesy of Brian Schroder)
# Please fill in the solutions, and test them using the iterators.tests.rb unit tests.
#
# Example:
#   $ ruby -w iterators.rb
#
################################################################################



################################################################################
# = Iterators
# == Exercise 1a: n_times
# Write an iterator function n_times(n) that calls the given block n times
# Hint: Note that the &block argument is not being passed in to n_times explicitly
# however we can use something else.
#
# Call a block n times
def n_times(n)
  n.times do yield() end
end

# == Exercise 1b: Repeat
# Write an iterator class Repeat that is instantiated with a number and has a method each
# that takes a block as an argument and calls it as often as declared when creating the object
class Repeat
  def initialize(n)
    @n = n
  end

  def each(&block)
    @n.times do block.call end
  end
end


# == Exercise 2: Inject
# === irb
# Write a one-liner in irb using Range#inject to calculate 20!.
# Remember that 20! is the factorial of 20, i.e. fac(4) is 1*1*2*3*4 = 24
# Do not use recursion
#
# Hint: A range is written like this:
#  (1..3)   # == 1,2,3
#  (1...3)  # == 1,2
# SOLUTION
# (1..20).inject { |sum, n| sum + n }
# === Function
# Fill in this function stub. Consider using an iterator we saw earlier, i.e. one
# that accumulates the result
#
# Make sure that values < 1 return 0
#
# Calculate n!
def fac(n)
  # INSERT CODE HERE
  if(n < 1)
    return 0
  else
    return (1..n).inject { |sum, n| sum * n }
  end
  # Deal with the < 1 condition first (one line of code)
  # Then deal with the normal case using an iterator (again one line of code)
end

# == Exercise 3: Maximum
# Write a function to find the longest string in an array.
#
# Hint: The length of a string can be found with the method String#length.
# Example: '12345'.length => 5
#
# Fill in this function stub
#
# Find longest string in strings
def longest_string(strings)
  # INSERT CODE HERE, just one or two lines
  return strings.max_by{|a| a.length}
end

# == Exercise 4: find_it
# Write a function find_it that takes an array of strings and
# a block and allows to implement longest_string, shortest_string
# and other functions by changing the block.
#
# Example:
#  find_it(['apple', 'banana', 'egg']) { | best_so_far, this | this.length < best_so_far.length }
#  # => 'egg'
#  should return the shortest string.
#
#  find_it(['apple', 'banana', 'egg']) { | best_so_far, this | this.length > best_so_far.length }
#  # => 'banana'
#  should return the longest string.
def find_it(strings)
  best_so_far = strings[0]
  strings.each do | this |
    best_so_far = this if (yield(best_so_far, this))
  end
  # Go through the list and call the block repeatedly (yield), using the result to update best_so_far
  # Feel free to change the partial solution if you wish. Note also that there are several ways
  # this can be solved.
  # INSERT CODE HERE: Again just a few lines of code are needed.
  return best_so_far
end
