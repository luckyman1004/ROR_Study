code_directory = {
    "New delhi" => 1011,
    "Pune" => 1020,
    "Mumbai" => 1022,
    "Kolkata" => 1033,
    "Hyderabad" => 1040,
    "Chennai" => 1044,
    "Ahmedabad" => 1079,
    "Bangalore" => 1080
}

def get_cities(dir)
    dir.each{ |city,code| puts city}
end

def get_code(city, dir)
    if dir[city.downcase.capitalize] != nil
        return "Code for #{city} is #{dir[city.downcase.capitalize]}"
        
    else
        return "INVALID INPUT"
        
    end
end

loop do
    70.times{print "-"}
    puts

    print "Do you want to lookup for an area code based on city name? [Y/N] "
    selection = gets.chomp.downcase

    break if selection != "y"

    puts "\nSelect city from below:-"
    get_cities(code_directory)
    puts

    inp = gets.chomp
    puts get_code(inp, code_directory)

end