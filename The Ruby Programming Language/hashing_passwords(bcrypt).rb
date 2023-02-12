require 'bcrypt'

my_password = BCrypt::Password.create("my password")
puts my_password
 
puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 10
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false
 
my_password = BCrypt::Password.new("$2a$12$qEubBv4kmGckh8Y5eewfbu9pJ.7iqnkNuIMxbBtGSFAKxI7vswMY6")
puts my_password
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false