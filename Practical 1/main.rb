#Define the variables
a = 1
b = 2

#Divide the 2 variables
puts "a/b"
puts a/b

#Divide these as decimals
puts "1.0/2.0"
puts 1.0/2.0

#Find the 2 to the power of100
puts "2^100"
puts 2**100

#Pull in the bigdecimal class
require 'bigdecimal'
#Create a new BigDecimal
r = BigDecimal.new("10")
#Add this to another BigDecimal
r = r + BigDecimal.new("0.50")
#Output it
puts r

puts "Hello World".upcase