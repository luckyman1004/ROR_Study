# string concatenation
sentence1 = "Hello People!"
p sentence1

sentence2 = "Welcome to the World."
p sentence2

puts sentence1 + " " + sentence2

# Interpolation
puts "#{sentence1} #{sentence2}"     # it doesn't works on single quotes strings

# Methods
puts sentence1.class
puts sentence1.reverse
puts sentence1.upcase!
puts sentence1.reverse

sentence2.reverse!
puts "After reversing inplace:- #{sentence2}"

puts sentence1.methods

# Input
puts "Enter your first name:-"
first_name = gets.chomp
puts "Your first name is #{first_name}."

puts "Enter Number"
num = gets.chomp
puts "Square of #{num} is #{num.to_i * num.to_i}."