# Numbers
puts 15*18

x = 18
y = 4

puts x.class
puts("x+y is #{x+y}")
puts("x-y is #{x-y}")
puts("x*y is #{x*y}")
puts("x/y is #{x/y} <-- Floor Value")
puts("x/y is #{x/y.to_f} <-- Exact Decimal")

puts "-" * 100

puts x.to_f
puts x.to_f.class

str = "Brand"
puts str
puts str.to_i
puts str.to_f

100.times{print "*"}

puts "\nBasic Calculator:-"    # '\n' is automatically added only at the end of 'puts' not the beginning
puts "First Number:"
a = gets.chomp.to_i
puts "Second Number:"
b = gets.chomp.to_i

puts "Multiplication of #{a} and #{b} is #{a*b}."
puts "Subtraction of #{a} and #{b} is #{a+b}."
puts "Addition of #{a} and #{b} is #{a+b}."
puts "Division of #{a} and #{b} is #{a.to_f/b}."
puts "Quotient of #{a} divided by #{b} is #{a/b}."
puts "Reminder of #{a} divided by #{b} is #{a%b}."

# Random Number Generator
random_num1 = rand()
puts random_num1

random_num2 = rand(7)
puts random_num2

random_num3 = rand(1..8)
puts random_num3

random_num4 = rand(1.9..8.5)
puts random_num4

p 30.times.map{rand(-126)} # Generated random nums are taken with their absolute values