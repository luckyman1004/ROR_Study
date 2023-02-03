# Using Modules
require_relative 'crud'

# User Database
user_data = [
    {username: "sumit", password: "$T9Pcx7"},
    {username: "rahul", password: "qWeRTy"},
    {username: "archit", password: "poI#u"},
    {username: "pradeep", password: "108bcIx"},
    {username: "dinesh", password: "Azh@65"},
    {username: "vikas", password: "Pqt@086"},
    {username: "neeraj", password: "Cp@N007"},
]

puts "Hashed User Data :-"
puts Crud.create_secure_users(user_data)

print "\nUsername: "
uname = gets.chomp.downcase

print "Password: "
pass = gets.chomp

100.times{print '-'}

puts
print Crud.authenticate_user(uname,pass,user_data)