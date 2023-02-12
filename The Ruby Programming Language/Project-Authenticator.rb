# User Database
userData = [
    {username: "sumit", password: "$T9Pcx7"},
    {username: "rahul", password: "qWeRTy"},
    {username: "archit", password: "poI#u"},
    {username: "pradeep", password: "108bcIx"},
    {username: "dinesh", password: "Azh@65"},
    {username: "vikas", password: "Pqt@086"},
    {username: "neeraj", password: "Cp@N007"},
]

# Function to verify user details
def user_auth(uname, pass, db)
    db.each do |user|
        if user[:username] == uname.downcase && user[:password] == pass
            return user
        end
    end
    "INVALID USERNAME OR PASSWORD"
end

60.times{print '*'}
puts
puts "\t\tWelcome to Authenticator"
60.times{print '-'}

puts "\nThis program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

puts "\n You have total 5 attempts"

count = 5
while count > 0
    print "Enter Username:"
    uname = gets.chomp

    print "Enter Password (Case Sensitive):"
    pass = gets.chomp

    result = user_auth(uname,pass,userData)
    puts result

    print "Press X to continue & Y to exit (default:exit) "
    inp = gets.chomp.upcase

    break if inp == "Y" || inp == ""

    count -= 1
end

if count == 0
    puts "You have exceeded the number of attempts."
end